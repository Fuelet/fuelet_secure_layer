import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';

abstract class IAccountsLocalRepository {
  bool get hasAccounts;

  // bech32
  String? get selectedAccount;

  /// Loads [Account]s from the localStorage.
  Future<List<Account>> loadAccounts({
    required String cryptographicKey,
  });

  /// Saves given [Account]s to the local storage.
  Future<void> saveAccounts(
    List<Account> accounts, {
    required cryptographicKey,
  });

  /// Updates certain account in local storage
  Future<Account> updateAccount(Account updatedAccount);

  /// Sets specific account address as selected
  Future<void> setSelectedAccount(String address);

  /// Resets selected account address
  Future<void> resetSelectedAccount();

  /// Delete certain account from local storage
  Future<void> removeAccount(String address);

  /// Removes all accounts from local storage
  Future<void> removeAllAccounts();
}
