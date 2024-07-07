import 'package:dartz/dartz.dart';
import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/core/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/core/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/core/wallet_create/entity/contract_id.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/utils/either_x.dart';

class WalletCreateRepositoryImpl implements IWalletCreateRepository {
  final IAccountsLocalRepository _accountsRepository;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;
  final HardwareSignerRepository _hardwareSignerRepository;

  const WalletCreateRepositoryImpl(
    this._accountsRepository,
    this._accountsPrivateDataRepository,
    this._hardwareSignerRepository,
  );

  @override
  Future<WalletImportResponse> createAccount(
      {required String currentNetworkUrl}) async {
    final wallet = await FuelWallet.generateNewWallet(
      networkUrl: currentNetworkUrl,
    );

    final account = Account(
      fuelAddress: AccountAddress(
        b256Address: wallet.b256Address,
        bech32Address: wallet.bech32Address,
      ),
      createdAt: DateTime.now(),
    );
    account.privateKey = wallet.privateKey;
    account.seedPhrase = wallet.mnemonicPhrase;

    return importAccountWithMnemonic(
      wallet.mnemonicPhrase!,
      addingMethod: AccountAddingMethod.create,
      currentNetworkUrl: currentNetworkUrl,
    );
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
      return const Left(WalletImportFailure.unexpected());
    }

    try {
      final account = Account(
        fuelAddress: AccountAddress(
          b256Address: wallet.b256Address,
          bech32Address: wallet.bech32Address,
        ),
        addingMethod: addingMethod,
        createdAt: DateTime.now(),
      );

      account.privateKey = wallet.privateKey;
      account.seedPhrase = wallet.mnemonicPhrase;

      return Right(account);
    } catch (err) {
      return const Left(WalletImportFailure.invalidMnemonic());
    }
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
      final AccountAddress mainAddress = await getMainAccountAddress(
        mnemonic,
        currentNetworkUrl: currentNetworkUrl,
      );
      for (int i = fromIndex; i < fromIndex + count; ++i) {
        Future<Account> request = FuelWallet.newFromMnemonicPhraseAndIndex(
          networkUrl: currentNetworkUrl,
          mnemonic: mnemonic,
          index: i,
        ).then(
          (fuelWallet) => Account(
            fuelAddress: AccountAddress(
              b256Address: fuelWallet.b256Address,
              bech32Address: fuelWallet.bech32Address,
            ),
            addingMethod: AccountAddingMethod.importWithSeedPhrase,
            createdAt: currentTime,
            derivativeInfo: DerivativeInfo(
              index: i,
              derivedFrom: mainAddress,
            ),
          )
            ..privateKey = fuelWallet.privateKey
            ..seedPhrase = i == 0 ? fuelWallet.mnemonicPhrase : null,
        );
        requests.add(request);
      }

      return Right(await Future.wait(requests));
    } catch (e) {
      return const Left(WalletImportFailure.invalidMnemonic());
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
          b256Address: fuelWallet.b256Address,
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

    try {
      final account = Account(
        fuelAddress: AccountAddress(
          b256Address: wallet.b256Address,
          bech32Address: wallet.bech32Address,
        ),
        addingMethod: addingMethod,
        createdAt: DateTime.now(),
      );

      account.privateKey = wallet.privateKey;
      account.seedPhrase = wallet.mnemonicPhrase;

      return Right(account);
    } catch (err) {
      return const Left(WalletImportFailure.invalidPrivateKey());
    }
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
        b256Address:
            await FuelWalletAddressConverter.b256StringFromBech32String(
                bech32Address),
      );

      final account = Account(
        fuelAddress: fuelAddress,
        createdAt: DateTime.now(),
        walletGroup: walletGroup,
        addingMethod: addingMethod,
        name: name,
      );

      account.privateKey = null;
      account.seedPhrase = null;

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
    final recoveryPrivateKey = _accountsPrivateDataRepository
        .data[_accountsRepository.selectedAccount]?.privateKey;
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

    final b256Address =
        await FuelWalletAddressConverter.b256StringFromBech32String(
      createdHsInfo.bech32,
    );
    final account = Account(
      fuelAddress: AccountAddress(
        b256Address: b256Address,
        bech32Address: createdHsInfo.bech32,
      ),
      createdAt: DateTime.now(),
      hardwareSignerTag: createdHsInfo.tag,
      name: name,
    );

    // TODO: temp solution, remove later
    account.privateKey = recoveryPrivateKey;
    account.seedPhrase = null;

    final data = <AccountAddressBech32, AccountPrivateData>{
      account.address: AccountPrivateData(
        privateKey: recoveryPrivateKey,
        seedPhrase: null,
      )
    };
    await _accountsPrivateDataRepository.saveData(data);

    return (account, createdHsInfo.contractId);
  }
}
