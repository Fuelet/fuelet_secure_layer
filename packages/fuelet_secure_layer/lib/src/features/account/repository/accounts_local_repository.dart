import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';

abstract class IAccountsLocalRepository {
  bool get hasAccounts;

  // bech32
  String? get selectedAccount;

  @Deprecated(
      'Should be replaced with a stream returning an address without private key')
  Stream<String?> get selectedAccountStream;

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
