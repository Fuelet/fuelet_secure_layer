import 'package:fuelet_secure_layer/core/account/entity/key_pair.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _selectedAccountPrefKey = 'selectedAccountAddress';

class AccountsLocalRepositoryImpl implements IAccountsLocalRepository {
  final SharedPreferences _sharedPreferences;
  final PrivateKeyRepository _privateKeyRepository;
  final SeedPhraseRepository _seedPhraseRepository;

  AccountsLocalRepositoryImpl(
    this._sharedPreferences,
    this._privateKeyRepository,
    this._seedPhraseRepository,
  ) {
    _init();
  }

  Future<void> _init() async {
    final address = _sharedPreferences.getString(_selectedAccountPrefKey);
    _selectedAccount = KeyPair(
      bech32: address,
      privateKey: address != null
          ? await _privateKeyRepository.getWalletPrivateKey(address)
          : null,
    );
  }

  @override
  bool get hasAccounts {
    return Hive.box<Account>(SecureLayerConstants.kAccountsBox).isNotEmpty;
  }

  KeyPair? _selectedAccount;

  @override
  KeyPair? get selectedAccount => _selectedAccount;

  @override
  Future<List<Account>> loadAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final accounts = accountsBox.values.toList();

    // settinGg prviate key for every account and adding to model
    for (Account account in accounts) {
      final privateKey = await _privateKeyRepository.getWalletPrivateKey(
        account.address,
      );
      final seedPhrase = await _seedPhraseRepository.getWalletSeedPhrase(
        account.address,
      );

      account.privateKey = privateKey;
      account.seedPhrase = seedPhrase;
    }
    return accounts;
  }

  @override
  Future<void> saveAccounts(List<Account> accounts) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);
    final List<Future<void>> futures = [];
    for (final account in accounts) {
      futures.add(accountsBox.put(account.address, account));
    }
    await Future.wait(futures);
    await _seedPhraseRepository.saveWalletsSeedPhrases(
      addressesAndSeedPhrases:
          accounts.map((e) => (e.address, e.seedPhrase)).toList(),
    );
    await _privateKeyRepository.saveWalletsPrivateKeys(
      addressesAndPrivateKeys:
          accounts.map((e) => (e.address, e.privateKey)).toList(),
    );
  }

  @override
  Future<void> updateAccount(Account updatedAccount) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.put(updatedAccount.address, updatedAccount);
  }

  @override
  Future<void> setSelectedAccount(String address) async {
    final privateKey = await _privateKeyRepository.getWalletPrivateKey(address);
    await HiveAccountManager.openAccountBox(address);
    await _sharedPreferences.setString(_selectedAccountPrefKey, address);
    _selectedAccount = KeyPair(bech32: address, privateKey: privateKey);
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
  }

  @override
  Future<void> removeAllAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.clear();
  }
}
