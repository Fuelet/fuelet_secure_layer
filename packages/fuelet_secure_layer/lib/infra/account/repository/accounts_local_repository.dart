import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:hive/hive.dart';

class AccountsLocalRepositoryImpl implements IAccountsLocalRepository {
  final PrivateKeyRepository _privateKeyRepository;
  final SeedPhraseRepository _seedPhraseRepository;

  const AccountsLocalRepositoryImpl(
    this._privateKeyRepository,
    this._seedPhraseRepository,
  );

  @override
  bool get hasAccounts {
    return Hive.box<Account>(SecureLayerConstants.kAccountsBox).isNotEmpty;
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
  Future<void> removeAllAccounts() async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.clear();
  }

  @override
  Future<void> updateAccount(Account updatedAccount) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.put(updatedAccount.address, updatedAccount);
  }

  @override
  Future<void> deleteAccount(String address) async {
    final accountsBox = Hive.box<Account>(SecureLayerConstants.kAccountsBox);

    await accountsBox.delete(address);
  }
}
