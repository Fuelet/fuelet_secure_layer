import 'dart:async';

import 'package:aes256gcm/aes256gcm.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/private_key/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/repository/seed_phrase_repository.dart';
import 'package:fuelet_secure_layer/src/utils/hex_helper.dart';

// The encryption tag is used to easily distinguish between encrypted and non-encrypted data
String _encryptionTag = '#';

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
          await _encrypt(entry.value.privateKey, cryptographicKey);
      addressesAndPrivateKeys.add((accountAddress, privateKey));

      final rawSeedPhrase = entry.value.seedPhrase;
      if (rawSeedPhrase != null) {
        final seedPhrase = await _encrypt(rawSeedPhrase, cryptographicKey);
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
    required String cryptographicKey,
  }) async {
    var privateKey = await _privateKeyRepository.getWalletPrivateKey(address);
    var privateKeyIsEncrypted = true;
    var seedPhraseIsEncrypted = true;
    if (privateKey != null) {
      (privateKey, privateKeyIsEncrypted) =
          await _decrypt(privateKey, cryptographicKey);
      privateKey = addHexPrefix(privateKey);

      var seedPhrase = await _seedPhraseRepository.getWalletSeedPhrase(address);
      if (seedPhrase != null) {
        (seedPhrase, seedPhraseIsEncrypted) =
            await _decrypt(seedPhrase, cryptographicKey);
      }

      final data = AccountPrivateData(
        privateKey: privateKey,
        seedPhrase: seedPhrase,
      );

      _updateData(address, data);

      if (!privateKeyIsEncrypted || !seedPhraseIsEncrypted) {
        _encryptPrivateData(
          address: address,
          privateKey: privateKey,
          seedPhrase: seedPhrase,
          cryptographicKey: cryptographicKey,
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
    final encryptedPrivateKey = await _encrypt(privateKey, cryptographicKey);

    String? encryptedSeedPhrase;
    if (seedPhrase != null) {
      encryptedSeedPhrase = await _encrypt(seedPhrase, cryptographicKey);
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

  /// Decrypts the [encrypted] string using the [cryptographicKey] if it was encrypted.
  /// Returns a tuple of decrypted string and a flag indicating whether the string was encrypted.
  Future<(String, bool)> _decrypt(
      String encrypted, String cryptographicKey) async {
    if (encrypted.startsWith(_encryptionTag)) {
      encrypted = encrypted.substring(_encryptionTag.length);
      return (await Aes256Gcm.decrypt(encrypted, cryptographicKey), true);
    }
    return (encrypted, false);
  }

  Future<String> _encrypt(String toEncrypt, String cryptographicKey) async {
    final encrypted = await Aes256Gcm.encrypt(toEncrypt, cryptographicKey);
    return '$_encryptionTag$encrypted';
  }
}
