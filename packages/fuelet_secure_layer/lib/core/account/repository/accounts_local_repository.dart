import 'package:fuelet_secure_layer/core/account/entity/account.dart';
import 'package:fuelet_secure_layer/core/account/entity/key_pair.dart';

abstract class IAccountsLocalRepository {
  bool get hasAccounts;

  @Deprecated(
      'Should be replaced with a field returning an address without private key')
  KeyPair? get selectedAccount;

  /// Loads [Account]s from the localStorage.
  Future<List<Account>> loadAccounts();

  /// Saves given [Account]s to the local storage.
  Future<void> saveAccounts(List<Account> accounts);

  /// Updates certain account in local storage
  Future<void> updateAccount(Account updatedAccount);

  /// Sets specific account address as selected
  Future<void> setSelectedAccount(String address);

  /// Resets selected account address
  Future<void> resetSelectedAccount();

  /// Delete certain account from local storage
  Future<void> removeAccount(String address);

  /// Removes all accounts from local storage
  Future<void> removeAllAccounts();
}
