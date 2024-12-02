import 'package:fuelet_secure_layer/src/features/account/accounts_manager/accounts_manager.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/derivative_account.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/network/repository/network_provider_repository.dart';
import 'package:fuelet_secure_layer/src/features/wallet_create/repository/wallet_create_repository.dart';
import 'package:fuelet_secure_layer/src/features/wallet_import/entity/wallet_import_typedef.dart';

class AccountsManagerImpl extends AccountsManager {
  final int _loadingDerivativeAccountCount = 20;

  final IAccountsLocalRepository _accountsLocalRepository;
  final IAccountsPrivateDataRepository _privateDataRepository;
  final IWalletCreateRepository _walletCreateRepository;
  final FuelNetworkProviderRepository _fuelNetworkProviderRepository;

  AccountsManagerImpl(
      this._accountsLocalRepository,
      this._privateDataRepository,
      this._walletCreateRepository,
      this._fuelNetworkProviderRepository);

  @override
  Future<List<DerivativeAccount>> getDerivativeAccounts() async {
    List<DerivativeAccount> resultMap = [];

    List<Account> currentAccounts =
        await _accountsLocalRepository.loadAccounts();

    List<(Account account, String seedPhrase)> accountSeedPhrases =
        await _defineAccountSeedPhrases(currentAccounts);

    for (int i = 0; i < accountSeedPhrases.length; i++) {
      (Account account, String seedPhrase) accountSeedPhraseItem =
          accountSeedPhrases[i];

      (String phrase, List<Account> accout) derivativeAccounts =
          await _defineDerivativeAccounts(accountSeedPhraseItem.$2);

      List<Account> derivatives = [];
      for (int k = 0; k < currentAccounts.length; k++) {
        Account currentAccountItem = currentAccounts[k];

        if (derivativeAccounts.$2.any((element) =>
            element.fuelAddress.bech32Address ==
            currentAccountItem.fuelAddress.bech32Address)) {
          derivatives.add(currentAccountItem);
        }
      }
      resultMap.add(DerivativeAccount(
          rootAccount: accountSeedPhraseItem.$1,
          seedPhraseAlias: "Seed phrase ${i + 1}",
          derivativeAccounts: derivatives));
    }

    return resultMap;
  }

  Future<List<(Account, String)>> _defineAccountSeedPhrases(
      List<Account> accounts) async {
    List<(Account, String)> response = [];
    try {
      for (int i = 0; i < accounts.length; i++) {
        Account accountItem = accounts[i];
        final AccountPrivateData? privateData = await _privateDataRepository
            .getAccountPrivateData(accountItem.fuelAddress.bech32Address);
        String? seedPhrase = privateData?.seedPhrase;
        if (seedPhrase != null && seedPhrase.isNotEmpty) {
          response.add((accountItem, seedPhrase));
        }
      }
    } catch (_) {}
    return response;
  }

  Future<(String seedPhrase, List<Account> derivativeAccounts)>
      _defineDerivativeAccounts(String seedPhrase) async {
    WalletsImportResponse? response;
    try {
      response =
          await _walletCreateRepository.importDerivativeAccountsWithMnemonic(
        seedPhrase,
        count: _loadingDerivativeAccountCount,
        fromIndex: 0,
        currentNetworkUrl: _fuelNetworkProviderRepository.currentNetwork,
      );
    } catch (_) {}
    return (seedPhrase, response?.getOrElse(() => []) ?? []);
  }
}
