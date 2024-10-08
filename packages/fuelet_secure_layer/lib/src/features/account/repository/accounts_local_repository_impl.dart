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
    final accounts = accountsBox.values.toList();

    for (var account in accounts) {
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
      account = _replaceForbiddenSymbolsIfNeeded(account);
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
    await accountsBox.delete(address);

    await _privateDataRepository.removeData(address);
  }

  @override
  Future<void> removeAllAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.clear();

    await _privateDataRepository.clearData();
  }

  Account _replaceForbiddenSymbolsIfNeeded(Account account) {
    var updatedAccount = account;
    if (StringUtils.isThereForbiddenSymbols(account.name ?? "")) {
      updatedAccount = account.copyWith(
          name: StringUtils.cutForbiddenSymbols(account.name ?? ""));
    }

    return updatedAccount;
  }
}
