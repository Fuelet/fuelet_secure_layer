import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';

abstract interface class IAccountsPrivateDataRepository {
  void addPrivateData(AccountAddressBech32 address, AccountPrivateData data);

  Future<bool> privateKeyExists(AccountAddressBech32 address);

  Future<bool> seedPhraseExists(AccountAddressBech32 address);

  /// Changes the key for the stored secrets
  Future<void> changeKey(String oldKey, String newKey);

  Future<AccountPrivateData?> getAccountPrivateData(String address);

  /// Flushes private data to the underlying secure storage.
  /// `ephemeralAddressesToSave` are used to filter out ephemeral data that should be saved.
  Future<void> flushData(Set<String> ephemeralAddressesToSave);

  Future<void> loadData(AccountAddressBech32 address);

  Future<void> removeData(AccountAddressBech32 address);

  Future<void> clearData();
}
