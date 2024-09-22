import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';

abstract interface class IAccountsPrivateDataRepository {
  Map<AccountAddressBech32, AccountPrivateData?> get data;

  void addPrivateData(AccountAddressBech32 address, AccountPrivateData data);

  bool privateKeyExists(AccountAddressBech32 address);

  bool seedPhraseExists(AccountAddressBech32 address);

  /// Flushes private data to the underlying secure storage.
  /// `ephemeralAddressesToSave` are used to filter out ephemeral data that should be saved.
  Future<void> flushData(
    Set<String> ephemeralAddressesToSave, {
    required String cryptographicKey,
  });

  Future<void> loadData(
    AccountAddressBech32 address, {
    required bool encryptionEnabled,
    String? cryptographicKey,
  });

  Future<void> removeData(AccountAddressBech32 address);

  Future<void> clearData();
}
