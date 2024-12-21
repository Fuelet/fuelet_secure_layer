import 'package:dartz/dartz.dart';
import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/wallet_create/entity/contract_id.dart';
import 'package:fuelet_secure_layer/src/utils/either_x.dart';

class WalletCreateRepositoryImpl implements IWalletCreateRepository {
  final IAccountsLocalRepository _accountsRepository;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;
  final HardwareSignerRepository _hardwareSignerRepository;

  const WalletCreateRepositoryImpl(
    this._accountsRepository,
    this._accountsPrivateDataRepository,
    this._hardwareSignerRepository,
  );

  void _captureAccountPrivateData(
      Account account, AccountPrivateData privateData) {
    _accountsPrivateDataRepository.addPrivateData(
        account.fuelAddress.bech32Address, privateData);
    account.setPrivateDataInfo(
      privateKeyExists: true,
      seedPhraseExists: privateData.seedPhrase != null,
    );
  }

  Account _accountFromWallet(FuelWallet wallet, DateTime createdAt,
      AccountAddingMethod addingMethod, DerivativeInfo? derivativeInfo) {
    final shouldSaveSeedPhrase =
        derivativeInfo == null || derivativeInfo.index == 0;
    final account = Account(
      fuelAddress: AccountAddress(
        stringB256Address: wallet.b256Address,
        bech32Address: wallet.bech32Address,
      ),
      createdAt: createdAt,
      addingMethod: addingMethod,
      derivativeInfo: derivativeInfo,
    );
    final privateData = AccountPrivateData(
      privateKey: wallet.privateKey,
      seedPhrase: shouldSaveSeedPhrase ? wallet.mnemonicPhrase : null,
    );
    _captureAccountPrivateData(account, privateData);
    return account;
  }

  @override
  Future<WalletImportResponse> createAccount(
      {required String currentNetworkUrl}) async {
    final wallet = await FuelWallet.generateNewWallet(
      networkUrl: currentNetworkUrl,
    );
    final account = _accountFromWallet(
        wallet, DateTime.now(), AccountAddingMethod.create, null);
    return Right(account);
  }

  @override
  Future<WalletImportResponse> importAccountWithMnemonic(
    String mnemonic, {
    required AccountAddingMethod addingMethod,
    required String currentNetworkUrl,
  }) async {
    late FuelWallet wallet;
    try {
      wallet = await FuelWallet.newFromMnemonicPhrase(
        networkUrl: currentNetworkUrl,
        mnemonic: mnemonic,
      );
    } catch (_) {
      return const Left(WalletImportFailure.invalidMnemonic());
    }

    final account =
        _accountFromWallet(wallet, DateTime.now(), addingMethod, null);
    return Right(account);
  }

  @override
  Future<WalletsImportResponse> importDerivativeAccountsWithMnemonic(
    String mnemonic, {
    required int count,
    required int fromIndex,
    required String currentNetworkUrl,
  }) async {
    try {
      final List<Future<Account>> requests = [];
      final currentTime = DateTime.now();
      final AccountAddress mainAddress;
      try {
        mainAddress = await getMainAccountAddress(
          mnemonic,
          currentNetworkUrl: currentNetworkUrl,
        );
      } catch (e) {
        return const Left(WalletImportFailure.invalidMnemonic());
      }
      for (int i = fromIndex; i < fromIndex + count; ++i) {
        Future<Account> request = FuelWallet.newFromMnemonicPhraseAndIndex(
          networkUrl: currentNetworkUrl,
          mnemonic: mnemonic,
          index: i,
        ).then((fuelWallet) => _accountFromWallet(
            fuelWallet,
            currentTime,
            AccountAddingMethod.importWithSeedPhrase,
            DerivativeInfo(index: i, derivedFrom: mainAddress)));
        requests.add(request);
      }

      return Right(await Future.wait(requests));
    } catch (e) {
      return const Left(WalletImportFailure.unexpected());
    }
  }

  Future<AccountAddress> getMainAccountAddress(
    String mnemonic, {
    required String currentNetworkUrl,
  }) =>
      FuelWallet.newFromMnemonicPhraseAndIndex(
        networkUrl: currentNetworkUrl,
        mnemonic: mnemonic,
        index: 0,
      ).then(
        (fuelWallet) => AccountAddress(
          stringB256Address: fuelWallet.b256Address,
          bech32Address: fuelWallet.bech32Address,
        ),
      );

  @override
  Future<WalletImportResponse> importAccountWithPrivateKey(
    String privateKey, {
    required AccountAddingMethod addingMethod,
    required String currentNetworkUrl,
  }) async {
    late FuelWallet wallet;
    try {
      wallet = await FuelWallet.newFromPrivateKey(
        networkUrl: currentNetworkUrl,
        privateKey: privateKey,
      );
    } catch (_) {
      return const Left(WalletImportFailure.invalidPrivateKey());
    }

    final account =
        _accountFromWallet(wallet, DateTime.now(), addingMethod, null);
    return Right(account);
  }

  @override
  Future<WalletImportResponse> watchAccount({
    required String bech32Address,
    required String name,
    required WalletGroup walletGroup,
    required AccountAddingMethod addingMethod,
  }) async {
    try {
      final fuelAddress = AccountAddress(
        bech32Address: bech32Address,
        stringB256Address:
            FuelWalletAddressConverter.b256StringFromBech32String(bech32Address)
                .value,
      );

      final account = Account(
        fuelAddress: fuelAddress,
        createdAt: DateTime.now(),
        walletGroup: walletGroup,
        addingMethod: addingMethod,
        name: name,
      );

      account.setPrivateDataInfo(
          privateKeyExists: false, seedPhraseExists: false);

      return Right(account);
    } catch (err) {
      return const Left(WalletImportFailure.invalidAddress());
    }
  }

  @override
  Future<(Account, ContractId)> createHSAccount({
    required String name,
    required GraphQLRepository graphQLRepository,
    required String currentNetworkUrl,
    required BlockchainNetwork network,
  }) async {
    final existingAccountPrivateData = await _accountsPrivateDataRepository
        .getAccountPrivateData(_accountsRepository.selectedAccount!);
    final recoveryPrivateKey = existingAccountPrivateData?.privateKey;
    if (recoveryPrivateKey == null) {
      throw Exception('Failed to get private key');
    }

    final createdHsInfo = (await _hardwareSignerRepository.createHardwareSigner(
      recoveryPrivateKey,
      graphQLRepository,
      currentNetworkUrl,
      network,
    ))
        .asRight();

    if (createdHsInfo == null) {
      throw Exception('createdHsInfo is null');
    }

    final b256Address = FuelWalletAddressConverter.b256StringFromBech32String(
      createdHsInfo.bech32,
    );
    final account = Account(
      fuelAddress: AccountAddress(
        stringB256Address: b256Address.value,
        bech32Address: createdHsInfo.bech32,
      ),
      createdAt: DateTime.now(),
      hardwareSignerTag: createdHsInfo.tag,
      name: name,
    );

    // TODO: temp solution, remove later
    final privateData = AccountPrivateData(
      privateKey: recoveryPrivateKey,
      seedPhrase: null,
    );
    _captureAccountPrivateData(account, privateData);
    return (account, createdHsInfo.contractId);
  }
}
