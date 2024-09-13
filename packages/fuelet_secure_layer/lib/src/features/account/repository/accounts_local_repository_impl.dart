import 'dart:async';

import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_x.dart';
import 'package:fuelet_secure_layer/src/features/account/manager/hive_account_manager.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/utils/constants.dart';
import 'package:fuelet_secure_layer/src/utils/string_utils.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _selectedAccountPrefKey = 'selectedAccountAddress';

class AccountsLocalRepositoryImpl implements IAccountsLocalRepository {
  final SharedPreferences _sharedPreferences;
  final IAccountsPrivateDataRepository _privateDataRepository;

  final _selectedAccountStreamController = StreamController<String?>();

  AccountsLocalRepositoryImpl(
    this._sharedPreferences,
    this._privateDataRepository,
  );

  void init() async {
    final address = _sharedPreferences.getString(_selectedAccountPrefKey);
    _selectedAccount = address;
    _selectedAccountStreamController.add(_selectedAccount);
  }

  @override
  bool get hasAccounts {
    return Hive.box<Account>(SecureLayerConstants.kAccountsBox).isNotEmpty;
  }

  String? _selectedAccount;

  @override
  String? get selectedAccount => _selectedAccount;

  @override
  Stream<String?> get selectedAccountStream =>
      _selectedAccountStreamController.stream;

  @override
  Future<List<Account>> loadAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final accounts = accountsBox.values.toList();

    for (Account account in accounts) {
      await _privateDataRepository.loadData(account.fuelAddress.bech32Address);
      account.privateKeyExists = _privateDataRepository
          .privateKeyExists(account.fuelAddress.bech32Address);
      account.seedPhraseExists = _privateDataRepository
          .seedPhraseExists(account.fuelAddress.bech32Address);
      account = _replaceForbiddenSymbolsIfNeeded(account);
    }

    return accounts;
  }

  @override
  Future<void> saveAccounts(List<Account> accounts) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final List<Future<void>> futures = [];

    final accountAddressesToFlush = <String>{};
    for (Account account in accounts) {
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
    _selectedAccountStreamController.sink.add(_selectedAccount);
    await HiveAccountManager.openAccountBox(address);
    await _sharedPreferences.setString(_selectedAccountPrefKey, address);
  }

  @override
  Future<void> resetSelectedAccount() {
    _selectedAccount = null;
    _selectedAccountStreamController.sink.add(_selectedAccount);

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
