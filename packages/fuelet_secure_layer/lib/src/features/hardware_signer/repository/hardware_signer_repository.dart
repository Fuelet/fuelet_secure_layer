import 'package:dartz/dartz.dart';
import 'package:flutter_fuelet_smart_contract_wallet/wallet/smart_contract_wallet.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/graph_ql/repository/graph_ql_repository.dart';
import 'package:fuelet_secure_layer/src/features/graph_ql/repository/query_storage.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/entity/recovery_pk_null_exception.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/repository/hardware_signer_exception.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/repository/hardware_signer_utils.dart';
import 'package:fuelet_secure_layer/src/features/network/entity/blockchain_network.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/src/utils/either_x.dart';
import 'package:fuelet_secure_layer/src/utils/iterable_x.dart';

class HardwareSignerRepository {
  final IAccountsLocalRepository _accountsRepository;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;
  final TPMService _tpmService;

  // Map <Tag, Bech32?>
  final Map<String, String?> _supportedHardwareSigners = {};

  HardwareSignerRepository(
    this._accountsRepository,
    this._accountsPrivateDataRepository,
    this._tpmService,
  ) {
    for (int i = 0; i < hardwareSignersLimitIos; ++i) {
      _supportedHardwareSigners[HardwareSignerUtils.getTag(i)] = null;
    }
  }

  bool get isServiceAvailable => _tpmService.isServiceAvailable();

  Future<bool> canTransferViaHS(String bech32) async =>
      !_supportedHardwareSigners.values.contains(bech32) ||
      !(await _accountsPrivateDataRepository.privateKeyExists(bech32));

  Future<void> loadCachedHardwareSigners(
    List<(String, String)> tagsAndBech32,
  ) async {
    if (!isServiceAvailable) {
      return;
    }
    if (tagsAndBech32.length <= hardwareSignersLimitIos) {
      for (var tagAndBech32 in tagsAndBech32) {
        final (tag, bech32) = tagAndBech32;
        final isTagCreated = (await _tpmService.isTagCreated(tag)).asRight();
        if (isTagCreated != null && isTagCreated) {
          _supportedHardwareSigners[tag] = bech32;
        }
      }
    }
  }

  Future<HardwareSignerEither<String>> getPublicKey(String bech32) async {
    try {
      if (!isServiceAvailable) {
        return const Left(
          HardwareSignerException(message: 'TPM is not supported'),
        );
      }
      final tag = getTagByBech32(bech32);
      if (tag == null) {
        return const Left(
          HardwareSignerException(
            message: 'Hardware Signer not found',
          ),
        );
      }
      final publicKey = (await _tpmService.getPublicKey(tag)).asRight();
      if (publicKey == null) {
        return const Left(
          HardwareSignerException(message: 'Failed to get public key'),
        );
      }
      return Right(publicKey);
    } on Exception catch (e) {
      return Left(
        HardwareSignerException(message: e.toString()),
      );
    }
  }

  Future<HardwareSignerEither<String>> signTransaction(
    List<int> message,
    String bech32,
  ) async {
    try {
      if (!isServiceAvailable) {
        return const Left(
          HardwareSignerException(message: 'TPM is not supported'),
        );
      }
      final tag = getTagByBech32(bech32);
      if (tag == null) {
        return const Left(
          HardwareSignerException(
            message: 'Hardware Signer not found',
          ),
        );
      }
      final signature = (await _tpmService.signMessage(message, tag)).asRight();
      if (signature == null) {
        return const Left(
          HardwareSignerException(message: 'Failed to sign transaction'),
        );
      }
      return Right(signature);
    } on Exception catch (e) {
      return Left(
        HardwareSignerException(message: e.toString()),
      );
    }
  }

  Future<HardwareSignerEither<bool>> checkDeploymentContractByWallet(
    String bech32,
    GraphQLRepository graphQLRepository,
    BlockchainNetwork network,
    String currentNetworkUrl,
  ) async {
    try {
      final privateData = await _accountsPrivateDataRepository
          .getAccountPrivateData(_accountsRepository.selectedAccount!);
      final recoveryWalletPrivateKey = privateData?.privateKey;

      if (recoveryWalletPrivateKey == null) {
        throw (Exception(RecoveryWalletPrivateKeyIsNullException()));
      }

      final tag = getTagByBech32(bech32);
      if (tag == null) {
        return const Left(
          HardwareSignerException(
            message: 'Hardware Signer not found',
          ),
        );
      }
      final r1PublicKey = (await _tpmService.getPublicKey(tag)).asRight();
      if (r1PublicKey == null) {
        return const Left(
          HardwareSignerException(message: 'Failed to get public key'),
        );
      }
      final convertedPublicKey =
          HardwareSignerUtils.convertPublicKey(r1PublicKey);

      final wallet = await SmartContractWallet.connect(
        networkUrl: currentNetworkUrl,
        r1PublicKey: convertedPublicKey,
        recoveryWalletPrivateKey: recoveryWalletPrivateKey,
      );
      return _checkDeploymentContract(
        graphQLRepository,
        wallet.contractId,
        network,
      );
    } on Exception catch (e) {
      return Left(
        HardwareSignerException(message: e.toString()),
      );
    }
  }

  Future<HardwareSignerEither<CreatedHardwareSignerInfo>> createHardwareSigner(
    String recoveryWalletPrivateKey,
    GraphQLRepository graphQLRepository,
    String currentNetworkUrl,
    BlockchainNetwork network,
  ) async {
    String? tag;
    SmartContractWallet? wallet;
    try {
      if (!isServiceAvailable) {
        return const Left(
          HardwareSignerException(message: 'TPM is not supported'),
        );
      }
      tag = getAvailableTag();
      if (tag == null) {
        return const Left(
          HardwareSignerException(message: 'All hardware signers are in use'),
        );
      }

      // TODO: check if tag is already created FUELET-489
      final generated = (await _tpmService.generateKeyPair(tag)).asRight();
      if (generated == null) {
        return const Left(
          HardwareSignerException(message: 'Failed to generate key pair'),
        );
      }
      final r1PublicKey = (await _tpmService.getPublicKey(tag)).asRight();
      if (r1PublicKey == null) {
        return const Left(
          HardwareSignerException(message: 'Failed to get public key'),
        );
      }
      final convertedPublicKey =
          HardwareSignerUtils.convertPublicKey(r1PublicKey);
      wallet = await SmartContractWallet.connect(
        networkUrl: currentNetworkUrl,
        r1PublicKey: convertedPublicKey,
        recoveryWalletPrivateKey: recoveryWalletPrivateKey,
      );
      final either = await _checkDeploymentContract(
        graphQLRepository,
        wallet.contractId,
        network, // _blockchainNetworkRepository.currentNetwork ?? _defaultNetwork,
      );

      final wasDeployed = either.asRight() ?? false;

      if (wasDeployed) {
        return const Left(
          HardwareSignerException(
            message: 'Contract already deployed',
          ),
        );
      }
      await wallet.deployContract();
      _supportedHardwareSigners[tag] = wallet.predicateBech32Address;
      final createdHsInfo = CreatedHardwareSignerInfo(
        tag,
        wallet.predicateBech32Address,
        wallet.contractId,
      );
      return Right(createdHsInfo);
    } on Exception catch (e) {
      if (tag != null) {
        _supportedHardwareSigners[tag] = null;
      }
      if (wallet != null) {
        deleteHardwareSigner(wallet.predicateBech32Address);
      }
      return Left(HardwareSignerException(message: e.toString()));
    }
  }

  Future<HardwareSignerEither<bool>> deleteHardwareSigner(String bech32) async {
    try {
      if (!isServiceAvailable) {
        return const Left(
          HardwareSignerException(message: 'TPM is not supported'),
        );
      }
      final tag = getTagByBech32(bech32);
      if (tag == null) {
        return const Left(
          HardwareSignerException(
            message: 'Hardware Signer not found',
          ),
        );
      }
      final either = await _tpmService.deleteKey(tag);
      if (either.isLeft()) {
        return Left(
          HardwareSignerException(
            message: either.asLeft()?.message,
          ),
        );
      }
      _supportedHardwareSigners[tag] = null;
      return const Right(true);
    } on Exception catch (e) {
      return Left(HardwareSignerException(message: e.toString()));
    }
  }

  Future<HardwareSignerEither<bool>> deleteAllHardwareSigners() async {
    try {
      if (!isServiceAvailable) {
        return const Left(
          HardwareSignerException(message: 'TPM is not supported'),
        );
      }
      final either =
          await _tpmService.deleteKeys(_supportedHardwareSigners.keys.toList());
      for (var entry in _supportedHardwareSigners.entries) {
        _supportedHardwareSigners[entry.key] = null;
      }
      if (either.isLeft()) {
        return const Left(
          HardwareSignerException(
            message: 'Failed to delete all hardware signers',
          ),
        );
      }
      return const Right(true);
    } on Exception catch (e) {
      return Left(HardwareSignerException(message: e.toString()));
    }
  }

  String? getTagByBech32(String bech32) {
    return _supportedHardwareSigners.entries
        .firstWhereOrNull((element) => element.value == bech32)
        ?.key;
  }

  String? getAvailableTag() {
    return _supportedHardwareSigners.entries
        .firstWhereOrNull((element) => element.value == null)
        ?.key;
  }

  Future<HardwareSignerEither<bool>> _checkDeploymentContract(
    GraphQLRepository graphQLRepository,
    String contractId,
    BlockchainNetwork network,
  ) async {
    try {
      final request = await graphQLRepository.query(
        network.indexerUrl,
        QueryStorage.getContract,
        {"contractId": contractId},
      );
      final wasDeployed = request.data?["contract"] != null ? true : false;
      return Right(wasDeployed);
    } on Exception catch (e) {
      return Left(
        HardwareSignerException(
          message: e.toString(),
        ),
      );
    }
  }
}
