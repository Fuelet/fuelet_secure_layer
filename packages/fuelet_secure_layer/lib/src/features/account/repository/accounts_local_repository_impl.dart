import 'dart:async';

import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _selectedAccountPrefKey = 'selectedAccountAddress';

class AccountsLocalRepositoryImpl implements IAccountsLocalRepository {
  final SharedPreferences _sharedPreferences;
  final IAccountsPrivateDataRepository _privateDataRepository;
  final PasswordManager _passwordManager;

  AccountsLocalRepositoryImpl(
    this._sharedPreferences,
    this._privateDataRepository,
    this._passwordManager,
  );

  void init() async {
    final address = _sharedPreferences.getString(_selectedAccountPrefKey);
    _selectedAccount = address;
  }

  @override
  bool get hasAccounts {
    return Hive.box<Account>(SecureLayerConstants.kAccountsBox).isNotEmpty;
  }

  String? _selectedAccount;

  @override
  String? get selectedAccount => _selectedAccount;

  @override
  Future<List<Account>> loadAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final accountsMap = accountsBox.toMap();
    List<Account> accounts = [];
    // Some accounts have been stored with b256 keys by mistake
    List<String> keysToRepair = [];

    for (final entry in accountsMap.entries) {
      var account = entry.value;

      // TODO: move this check and action to a proper place
      if (await _passwordManager.hasSessionPassword()) {
        await _privateDataRepository
            .loadData(account.fuelAddress.bech32Address);
      }
      account.setPrivateDataInfo(
          privateKeyExists: await _privateDataRepository
              .privateKeyExists(account.fuelAddress.bech32Address),
          seedPhraseExists: await _privateDataRepository
              .seedPhraseExists(account.fuelAddress.bech32Address));
      account = _repairFuelAddress(account);
      account = _replaceForbiddenSymbolsIfNeeded(account);
      account = _changeWalletGroupIfNeeded(account);
      accountsMap[entry.key] = account;

      if (entry.key != account.fuelAddress.bech32Address) {
        keysToRepair.add(entry.key);
      } else {
        accounts.add(account);
      }
    }

    for (final key in keysToRepair) {
      final account = accountsMap[key];
      if (account == null) {
        continue;
      }
      final sameAccount = accountsMap[account.fuelAddress.bech32Address];
      if (sameAccount == null || (sameAccount.isWatchlist && account.isOwner)) {
        await _privateDataRepository.changeKey(
            key, account.fuelAddress.bech32Address);
        await accountsBox.put(account.fuelAddress.bech32Address, account);
        accounts = accounts
            .where((acc) =>
                acc.fuelAddress.bech32Address !=
                account.fuelAddress.bech32Address)
            .toList();
        accounts.add(account);
      }
      await accountsBox.delete(key);
      if (selectedAccount == key) {
        setSelectedAccount(account.fuelAddress.bech32Address);
      }
    }

    return accounts;
  }

  @override
  Future<void> saveAccounts(List<Account> accounts) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final List<Future<void>> futures = [];

    final accountAddressesToFlush = <String>{};
    for (var account in accounts) {
      account = _replaceForbiddenSymbolsIfNeeded(account);
      if (account.isOwner) {
        accountAddressesToFlush.add(account.fuelAddress.bech32Address);
      }
      futures.add(accountsBox.put(account.fuelAddress.bech32Address, account));
    }
    await Future.wait(futures);
    await _privateDataRepository.flushData(accountAddressesToFlush);
  }

  @override
  Future<Account> updateAccount(Account account) async {
    final updatedAccount = _replaceForbiddenSymbolsIfNeeded(account);

    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.put(
        updatedAccount.fuelAddress.bech32Address, updatedAccount);

    return updatedAccount;
  }

  @override
  Future<void> setSelectedAccount(String address) async {
    _selectedAccount = address;
    await _sharedPreferences.setString(_selectedAccountPrefKey, address);
  }

  @override
  Future<void> resetSelectedAccount() {
    _selectedAccount = null;

    return _sharedPreferences.remove(_selectedAccountPrefKey);
  }

  @override
  Future<void> removeAccount(String address) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    // delete both possible keys from the storage
    final fuelAddress = FuelAddress.fromString(address);
    await accountsBox.delete(fuelAddress.b256Address);
    await accountsBox.delete(fuelAddress.bech32Address);

    await _privateDataRepository.removeData(address);
  }

  @override
  Future<void> removeAllAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.clear();

    await _privateDataRepository.clearData();
  }

  Account _repairFuelAddress(Account account) {
    final fuelAddress = FuelAddress.fromString(account.fuelAddress.b256Address.value);
    return account.copyWith(
        fuelAddress: AccountAddress(
            stringB256Address: fuelAddress.b256Address,
            bech32Address: fuelAddress.bech32Address));
  }

  Account _replaceForbiddenSymbolsIfNeeded(Account account) {
    var updatedAccount = account;
    if (StringUtils.isThereForbiddenSymbols(account.name ?? "")) {
      updatedAccount = account.copyWith(
          name: StringUtils.cutForbiddenSymbols(account.name ?? ""));
    }

    return updatedAccount;
  }

  Account _changeWalletGroupIfNeeded(Account account) {
    var updatedAccount = account;
    if (account.walletGroup == WalletGroup.myWallets && !account.isOwner) {
      updatedAccount = account.copyWith(walletGroup: WalletGroup.watchlist);
      updateAccount(account);
    }
    return updatedAccount;
  }
}
