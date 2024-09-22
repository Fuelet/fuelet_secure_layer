import 'dart:async';

import 'package:aes256gcm/aes256gcm.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/private_key/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/repository/seed_phrase_repository.dart';
import 'package:fuelet_secure_layer/src/utils/hex_helper.dart';

class AccountsPrivateDataRepositoryImpl
    implements IAccountsPrivateDataRepository {
  final PrivateKeyRepository _privateKeyRepository;
  final SeedPhraseRepository _seedPhraseRepository;

  AccountsPrivateDataRepositoryImpl(
    this._privateKeyRepository,
    this._seedPhraseRepository,
  );

  final Map<AccountAddressBech32, AccountPrivateData> _data = {};

  /// Data that is about to be flushed to secure storage, but not accessible
  /// for reading yet
  final Map<AccountAddressBech32, AccountPrivateData> _ephemeralData = {};

  @override
  Map<AccountAddressBech32, AccountPrivateData> get data => _data;

  @override
  void addPrivateData(AccountAddressBech32 address, AccountPrivateData data) {
    _updateEphemeralData(address, data);
  }

  @override
  bool privateKeyExists(AccountAddressBech32 address) =>
      data[address]?.privateKey != null;

  @override
  bool seedPhraseExists(AccountAddressBech32 address) =>
      data[address]?.seedPhrase != null;

  @override
  Future<void> flushData(
    Set<String> ephemeralAddressesToSave, {
    required cryptographicKey,
  }) async {
    _propagateAndClearEphemeralData(ephemeralAddressesToSave);

    final addressesAndPrivateKeys = <(String, String?)>[];
    final addressesAndSeedPhrases = <(String, String?)>[];

    for (final entry in _data.entries) {
      final accountAddress = entry.key;

      final privateKey =
          await Aes256Gcm.encrypt(entry.value.privateKey, cryptographicKey);
      addressesAndPrivateKeys.add((accountAddress, privateKey));

      final rawSeedPhrase = entry.value.seedPhrase;
      if (rawSeedPhrase != null) {
        final seedPhrase =
            await Aes256Gcm.encrypt(rawSeedPhrase, cryptographicKey);
        addressesAndSeedPhrases.add((accountAddress, seedPhrase));
      }
    }

    await _privateKeyRepository.saveWalletsPrivateKeys(
      addressesAndPrivateKeys: addressesAndPrivateKeys,
    );
    await _seedPhraseRepository.saveWalletsSeedPhrases(
      addressesAndSeedPhrases: addressesAndSeedPhrases,
    );
  }

  @override
  Future<void> loadData(
    String address, {
    required bool encryptionEnabled,
    String? cryptographicKey,
  }) async {
    var privateKey = await _privateKeyRepository.getWalletPrivateKey(address);
    if (privateKey != null) {
      if (encryptionEnabled) {
        privateKey = addHexPrefix(
            await Aes256Gcm.decrypt(privateKey, cryptographicKey!));
      }

      var seedPhrase = await _seedPhraseRepository.getWalletSeedPhrase(address);
      if (seedPhrase != null) {
        if (encryptionEnabled) {
          seedPhrase = await Aes256Gcm.decrypt(seedPhrase, cryptographicKey!);
        }
      }

      final data = AccountPrivateData(
        privateKey: privateKey,
        seedPhrase: seedPhrase,
      );

      _updateData(address, data);

      if (!encryptionEnabled) {
        _encryptPrivateData(
          address: address,
          privateKey: privateKey,
          seedPhrase: seedPhrase,
          cryptographicKey: cryptographicKey!,
        );
      }
    }
  }

  @override
  Future<void> removeData(AccountAddressBech32 address) async {
    _updateData(address, null);
    _updateEphemeralData(address, null);

    await _privateKeyRepository.deleteWalletPrivateKey(address);
    await _seedPhraseRepository.deleteWalletSeedPhrase(address);
  }

  @override
  Future<void> clearData() async {
    _data.clear();
    _ephemeralData.clear();

    await _privateKeyRepository.deletePrivateKeys();
    await _seedPhraseRepository.deleteSeedPhrases();
  }

  void _updateData(AccountAddressBech32 address, AccountPrivateData? data) {
    if (data == null) {
      _data.remove(address);
    } else {
      _data[address] = data;
    }
  }

  void _updateEphemeralData(
      AccountAddressBech32 address, AccountPrivateData? data) {
    if (data == null) {
      _ephemeralData.remove(address);
    } else {
      _ephemeralData[address] = data;
    }
  }

  void _propagateAndClearEphemeralData(Set<String> ephemeralAddressesToSave) {
    // normalization, just in case
    ephemeralAddressesToSave =
        ephemeralAddressesToSave.map((e) => e.toLowerCase()).toSet();

    for (final entry in _ephemeralData.entries) {
      final accountAddress = entry.key;
      if (ephemeralAddressesToSave.contains(accountAddress.toLowerCase())) {
        _data[accountAddress] = entry.value;
      }
    }
    _ephemeralData.clear();
  }

  Future<void> _encryptPrivateData({
    required String address,
    required String privateKey,
    required String? seedPhrase,
    required String cryptographicKey,
  }) async {
    final encryptedPrivateKey =
        await Aes256Gcm.encrypt(privateKey, cryptographicKey);

    String? encryptedSeedPhrase;
    if (seedPhrase != null) {
      encryptedSeedPhrase =
          await Aes256Gcm.encrypt(seedPhrase, cryptographicKey);
    }

    await _privateKeyRepository.saveWalletPrivateKey(
      address: address,
      privateKey: encryptedPrivateKey,
    );
    await _seedPhraseRepository.saveWalletSeedPhrase(
      address: address,
      seedPhrase: encryptedSeedPhrase,
    );
  }
}
