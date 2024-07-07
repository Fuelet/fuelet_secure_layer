import 'dart:async';

import 'package:fuelet_secure_layer/core/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/core/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _selectedAccountPrefKey = 'selectedAccountAddress';

class AccountsLocalRepositoryImpl implements IAccountsLocalRepository {
  final SharedPreferences _sharedPreferences;
  late final IAccountsPrivateDataRepository _privateDataRepository;

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

    for (final account in accounts) {
      await _privateDataRepository.loadData(account.address);

      // TODO remove later
      account.privateKey =
          _privateDataRepository.data[account.address]?.privateKey;
      account.seedPhrase =
          _privateDataRepository.data[account.address]?.seedPhrase;
    }

    return accounts;
  }

  @override
  Future<void> saveAccounts(List<Account> accounts) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final List<Future<void>> futures = [];

    final Map<AccountAddressBech32, AccountPrivateData?> privateData = {};

    for (final account in accounts) {
      futures.add(accountsBox.put(account.address, account));

      final privateKey = account.privateKey;
      if (privateKey != null) {
        privateData[account.address] = AccountPrivateData(
          privateKey: privateKey,
          seedPhrase: account.seedPhrase,
        );
      }
    }
    await Future.wait(futures);

    await _privateDataRepository.saveData(privateData);
  }

  @override
  Future<void> updateAccount(Account updatedAccount) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.put(updatedAccount.address, updatedAccount);
  }

  @override
  Future<void> setSelectedAccount(String address) async {
    await HiveAccountManager.openAccountBox(address);
    await _sharedPreferences.setString(_selectedAccountPrefKey, address);
    _selectedAccount = address;
    _selectedAccountStreamController.sink.add(_selectedAccount);
  }

  @override
  Future<void> resetSelectedAccount() {
    _selectedAccount = null;
    _selectedAccountStreamController.sink.add(_selectedAccount);
    _privateDataRepository.clearData();

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
}
