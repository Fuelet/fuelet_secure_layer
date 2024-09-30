import 'dart:async';

import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/encryption/encryption_manager.dart';
import 'package:fuelet_secure_layer/src/features/private_data/private_key/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/repository/seed_phrase_repository.dart';
import 'package:fuelet_secure_layer/src/utils/hex_helper.dart';

class AccountsPrivateDataRepositoryImpl
    implements IAccountsPrivateDataRepository {
  final PrivateKeyRepository _privateKeyRepository;
  final SeedPhraseRepository _seedPhraseRepository;
  final EncryptionManager _encryptionManager;

  AccountsPrivateDataRepositoryImpl(
    this._privateKeyRepository,
    this._seedPhraseRepository,
    this._encryptionManager,
  );

  /// Data that is about to be flushed to secure storage, but not accessible
  /// for reading yet
  final Map<AccountAddressBech32, AccountPrivateData> _ephemeralData = {};

  @override
  void addPrivateData(AccountAddressBech32 address, AccountPrivateData data) {
    _updateEphemeralData(address, data);
  }

  @override
  Future<bool> privateKeyExists(AccountAddressBech32 address) async {
    final value = await _privateKeyRepository.getWalletPrivateKey(address);

    return value != null;
  }

  @override
  Future<bool> seedPhraseExists(AccountAddressBech32 address) async {
    final value = await _seedPhraseRepository.getWalletSeedPhrase(address);

    return value != null;
  }

  @override
  Future<AccountPrivateData?> getAccountPrivateData(String address) async {
    final encryptedPrivateKey =
        await _privateKeyRepository.getWalletPrivateKey(address);
    if (encryptedPrivateKey == null) {
      return null;
    }

    final encryptedSeedPhrase =
        await _seedPhraseRepository.getWalletSeedPhrase(address);

    final privateKey =
        (await _encryptionManager.decryptWithPassword(encryptedPrivateKey)).$1;
    final seedPhrase = encryptedSeedPhrase != null
        ? (await _encryptionManager.decryptWithPassword(encryptedSeedPhrase)).$1
        : null;

    return AccountPrivateData(privateKey: privateKey, seedPhrase: seedPhrase);
  }

  @override
  Future<void> flushData(Set<String> ephemeralAddressesToSave) async {
    final addressesAndPrivateKeys = <(String, String?)>[];
    final addressesAndSeedPhrases = <(String, String?)>[];

    for (final entry in _ephemeralData.entries) {
      final accountAddress = entry.key;

      final privateKey =
          await _encryptionManager.encryptWithPassword(entry.value.privateKey);
      addressesAndPrivateKeys.add((accountAddress, privateKey));

      final rawSeedPhrase = entry.value.seedPhrase;
      if (rawSeedPhrase != null) {
        final seedPhrase =
            await _encryptionManager.encryptWithPassword(rawSeedPhrase);
        addressesAndSeedPhrases.add((accountAddress, seedPhrase));
      }
    }

    await _privateKeyRepository.saveWalletsPrivateKeys(
      addressesAndPrivateKeys: addressesAndPrivateKeys,
    );
    await _seedPhraseRepository.saveWalletsSeedPhrases(
      addressesAndSeedPhrases: addressesAndSeedPhrases,
    );

    _ephemeralData.clear();
  }

  @override
  Future<void> loadData(String address) async {
    var privateKey = await _privateKeyRepository.getWalletPrivateKey(address);
    var privateKeyIsEncrypted = true;
    var seedPhraseIsEncrypted = true;
    if (privateKey != null) {
      (privateKey, privateKeyIsEncrypted) =
          await _encryptionManager.decryptWithPassword(privateKey);
      privateKey = addHexPrefix(privateKey);

      var seedPhrase = await _seedPhraseRepository.getWalletSeedPhrase(address);
      if (seedPhrase != null) {
        (seedPhrase, seedPhraseIsEncrypted) =
            await _encryptionManager.decryptWithPassword(seedPhrase);
      }

      if (!privateKeyIsEncrypted || !seedPhraseIsEncrypted) {
        final result = await _encryptPrivateData(
          address: address,
          privateKey: privateKey,
          seedPhrase: seedPhrase,
        );
        await _persistPrivateData(
          address: address,
          privateKey: result.$1,
          seedPhrase: result.$2,
        );
      }
    }
  }

  @override
  Future<void> removeData(AccountAddressBech32 address) async {
    _updateEphemeralData(address, null);

    await _privateKeyRepository.deleteWalletPrivateKey(address);
    await _seedPhraseRepository.deleteWalletSeedPhrase(address);
  }

  @override
  Future<void> clearData() async {
    _ephemeralData.clear();

    await _privateKeyRepository.deletePrivateKeys();
    await _seedPhraseRepository.deleteSeedPhrases();
  }

  void _updateEphemeralData(
      AccountAddressBech32 address, AccountPrivateData? data) {
    if (data == null) {
      _ephemeralData.remove(address);
    } else {
      _ephemeralData[address] = data;
    }
  }

  Future<(String, String?)> _encryptPrivateData({
    required String address,
    required String privateKey,
    required String? seedPhrase,
  }) async {
    final encryptedPrivateKey =
        await _encryptionManager.encryptWithPassword(privateKey);

    String? encryptedSeedPhrase;
    if (seedPhrase != null) {
      encryptedSeedPhrase =
          await _encryptionManager.encryptWithPassword(seedPhrase);
    }

    return (encryptedPrivateKey, encryptedSeedPhrase);
  }

  Future<void> _persistPrivateData({
    required String address,
    required String privateKey,
    required String? seedPhrase,
  }) async {
    await _privateKeyRepository.saveWalletPrivateKey(
      address: address,
      privateKey: privateKey,
    );
    await _seedPhraseRepository.saveWalletSeedPhrase(
      address: address,
      seedPhrase: seedPhrase,
    );
  }
}
