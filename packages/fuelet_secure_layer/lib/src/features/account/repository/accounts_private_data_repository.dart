import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';

abstract interface class IAccountsPrivateDataRepository {
  Map<AccountAddressBech32, AccountPrivateData?> get data;
  Stream<Map<AccountAddressBech32, AccountPrivateData?>> get dataStream;

  bool privateKeyExists(AccountAddressBech32 address);

  bool seedPhraseExists(AccountAddressBech32 address);

  Future<void> saveData(Map<AccountAddressBech32, AccountPrivateData?> data);

  Future<void> loadData(AccountAddressBech32 address);

  Future<void> removeData(AccountAddressBech32 address);

  Future<void> clearData();

  Future<void> dispose();
}
