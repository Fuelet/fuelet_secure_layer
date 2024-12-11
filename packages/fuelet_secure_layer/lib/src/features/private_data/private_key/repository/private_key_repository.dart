import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/utils/json_parsing_helper.dart';

class PrivateKeyRepository {
  static const _storageKey = 'private_keys';
  final FlutterSecureStorage _secureStorage;

  const PrivateKeyRepository(this._secureStorage);

  Future<Map<String, dynamic>> _getPrivateKeysMap() async {
    final data = await _secureStorage.read(key: _storageKey);
    if (data == null) {
      return {};
    }

    return JsonParsingHelper.jsonMapFromString(data);
  }

  Future<void> saveWalletPrivateKey({
    required address,
    required privateKey,
  }) async {
    final keys = await _getPrivateKeysMap();
    keys[address] = privateKey;

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }

  Future<void> saveWalletsPrivateKeys({
    required List<(String, String?)> addressesAndPrivateKeys,
  }) async {
    final keys = await _getPrivateKeysMap();
    for (final addressAndKey in addressesAndPrivateKeys) {
      if (addressAndKey.$2 == null) continue;
      keys[addressAndKey.$1] = addressAndKey.$2;
    }

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }

  Future<String?> getWalletPrivateKey(String walletAddress) async {
    final keys = await _getPrivateKeysMap();
    return keys[walletAddress];
  }

  Future<void> deletePrivateKeys() {
    return _secureStorage.delete(key: _storageKey);
  }

  Future<bool> deleteWalletPrivateKey(String address) async {
    final keys = await _getPrivateKeysMap();
    if (keys.remove(address) == null) return false;

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
    return true;
  }
}
