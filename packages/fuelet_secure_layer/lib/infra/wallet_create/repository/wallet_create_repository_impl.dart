import 'package:dartz/dartz.dart';
import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/core/wallet_create/entity/contract_id.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/utils/either_x.dart';

class WalletCreateRepositoryImpl implements IWalletCreateRepository {
  final IAccountsLocalRepository _accountsRepository;
  final FuelNetworkProviderRepository _networkProviderRepository;
  final PrivateKeyRepository _privateKeyRepository;
  final HardwareSignerRepository _hardwareSignerRepository;
  final FuelWalletAddressConverter _addressConverter;

  const WalletCreateRepositoryImpl(
    this._accountsRepository,
    this._networkProviderRepository,
    this._privateKeyRepository,
    this._hardwareSignerRepository,
    this._addressConverter,
  );

  @override
  Future<Account> createAccount() async {
    final wallet = await FuelWallet.generateNewWallet(
      networkUrl: _networkProviderRepository.currentNetwork,
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

    return account;
  }

  @override
  Future<WalletImportResponse> importAccountWithMnemonic(
    String mnemonic, {
    required AccountAddingMethod addingMethod,
  }) async {
    late FuelWallet wallet;
    try {
      wallet = await FuelWallet.newFromMnemonicPhrase(
        networkUrl: _networkProviderRepository.currentNetwork,
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
  }) async {
    try {
      final List<Future<Account>> requests = [];
      final currentTime = DateTime.now();
      final AccountAddress mainAddress = await getMainAccountAddress(mnemonic);
      for (int i = fromIndex; i < fromIndex + count; ++i) {
        Future<Account> request = FuelWallet.newFromMnemonicPhraseAndIndex(
          networkUrl: _networkProviderRepository.currentNetwork,
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

  Future<AccountAddress> getMainAccountAddress(String mnemonic) =>
      FuelWallet.newFromMnemonicPhraseAndIndex(
        networkUrl: _networkProviderRepository.currentNetwork,
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
  }) async {
    late FuelWallet wallet;
    try {
      wallet = await FuelWallet.newFromPrivateKey(
        networkUrl: _networkProviderRepository.currentNetwork,
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
            await _addressConverter.b256StringFromBech32String(bech32Address),
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
  Future<(Account, ContractId)> createHSAccount({required String name}) async {
    final recoveryPrivateKey = _accountsRepository.selectedAccount?.privateKey;
    if (recoveryPrivateKey == null) {
      throw Exception('Failed to get private key');
    }

    final createdHsInfo = (await _hardwareSignerRepository
            .createHardwareSigner(recoveryPrivateKey))
        .asRight();

    if (createdHsInfo == null) {
      throw Exception('createdHsInfo is null');
    }

    final b256Address = await _addressConverter.b256StringFromBech32String(
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

    await _privateKeyRepository.saveWalletPrivateKey(
      privateKey: recoveryPrivateKey,
      walletAddress: account.address,
    );

    return (account, createdHsInfo.contractId);
  }
}
