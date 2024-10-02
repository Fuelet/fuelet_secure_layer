import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/utils/json_parsing_helper.dart';

class SeedPhraseRepository {
  static const _storageKey = 'seed_phrases';
  final FlutterSecureStorage _secureStorage;

  const SeedPhraseRepository(this._secureStorage);

  Future<Map<String, dynamic>> _getSeedPhrasesMap() async {
    final data = await _secureStorage.read(key: _storageKey);
    if (data == null) {
      return {};
    }

    return JsonParsingHelper.jsonMapFromString(data);
  }

  Future<void> saveWalletSeedPhrase({
    ///bech32
    required address,
    required seedPhrase,
  }) async {
    final keys = await _getSeedPhrasesMap();
    keys[address] = seedPhrase;

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }

  Future<void> saveWalletsSeedPhrases({
    required List<(String, String?)> addressesAndSeedPhrases,
  }) async {
    final keys = await _getSeedPhrasesMap();
    for (final addressAndSeed in addressesAndSeedPhrases) {
      if (addressAndSeed.$2 == null) continue;
      keys[addressAndSeed.$1] = addressAndSeed.$2;
    }

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }

  Future<String?> getWalletSeedPhrase(String walletAddress) async {
    final data = await _secureStorage.read(key: _storageKey);
    if (data == null) {
      return null;
    }

    final seedPhrasesMap = JsonParsingHelper.jsonMapFromString(data);
    final seedPhrase = seedPhrasesMap[walletAddress];

    return seedPhrase;
  }

  Future<void> deleteSeedPhrases() {
    return _secureStorage.delete(key: _storageKey);
  }

  Future<bool> deleteWalletSeedPhrase(String address) async {
    final keys = await _getSeedPhrasesMap();
    if (keys.remove(address) == null) return false;

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
    return true;
  }
}
