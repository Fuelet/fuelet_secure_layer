import 'dart:async';

import 'package:flutter_fuels/flutter_fuels.dart';
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
  Future<void> changeKey(String oldKey, String newKey) async {
    final pk = await _privateKeyRepository.getWalletPrivateKey(oldKey);
    final sp = await _seedPhraseRepository.getWalletSeedPhrase(oldKey);
    await _privateKeyRepository.saveWalletPrivateKey(address: newKey, privateKey: pk);
    await _seedPhraseRepository.saveWalletSeedPhrase(address: newKey, seedPhrase: sp);
    await _privateKeyRepository.deleteWalletPrivateKey(oldKey);
    await _seedPhraseRepository.deleteWalletSeedPhrase(oldKey);
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
    // normalization, just in case
    ephemeralAddressesToSave =
        ephemeralAddressesToSave.map((e) => e.toLowerCase()).toSet();
    final addressesAndPrivateKeys = <(String, String?)>[];
    final addressesAndSeedPhrases = <(String, String?)>[];

    for (final entry in _ephemeralData.entries) {
      final accountAddress = entry.key;
      if (!ephemeralAddressesToSave.contains(accountAddress.toLowerCase())) {
        continue;
      }

      final (encryptedPrivateKey, encryptedSeedPhrase) =
          await _encryptPrivateData(
        privateKey: entry.value.privateKey,
        seedPhrase: entry.value.seedPhrase,
      );
      addressesAndPrivateKeys.add((accountAddress, encryptedPrivateKey));
      if (encryptedSeedPhrase != null) {
        addressesAndSeedPhrases.add((accountAddress, encryptedSeedPhrase));
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
          privateKey: privateKey,
          seedPhrase: seedPhrase,
        );
        await _persistPrivateData(
          address: address,
          encryptedPrivateKey: result.$1,
          encryptedSeedPhrase: result.$2,
        );
      }
    }
  }

  @override
  Future<void> removeData(AccountAddressBech32 address) async {
    _updateEphemeralData(address, null);
    final fuelAddress = FuelAddress.fromString(address);

    await _privateKeyRepository
        .deleteWalletPrivateKey(fuelAddress.bech32Address);
    await _privateKeyRepository.deleteWalletPrivateKey(fuelAddress.b256Address);
    await _seedPhraseRepository
        .deleteWalletSeedPhrase(fuelAddress.bech32Address);
    await _seedPhraseRepository.deleteWalletSeedPhrase(fuelAddress.b256Address);
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
    required String encryptedPrivateKey,
    required String? encryptedSeedPhrase,
  }) async {
    await _privateKeyRepository.saveWalletPrivateKey(
      address: address,
      privateKey: encryptedPrivateKey,
    );
    if (encryptedSeedPhrase != null) {
      await _seedPhraseRepository.saveWalletSeedPhrase(
        address: address,
        seedPhrase: encryptedSeedPhrase,
      );
    }
  }
}
