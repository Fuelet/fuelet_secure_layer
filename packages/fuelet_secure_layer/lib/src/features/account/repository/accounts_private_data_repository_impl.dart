import 'dart:async';

import 'package:fuelet_secure_layer/src/features/account/entity/account_address_bech32.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_private_data.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/private_key/repository/private_key_repository.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/repository/seed_phrase_repository.dart';

class AccountsPrivateDataRepositoryImpl
    implements IAccountsPrivateDataRepository {
  final PrivateKeyRepository _privateKeyRepository;
  final SeedPhraseRepository _seedPhraseRepository;

  AccountsPrivateDataRepositoryImpl(
    this._privateKeyRepository,
    this._seedPhraseRepository,
  );

  final Map<AccountAddressBech32, AccountPrivateData> _data = {};

  final _dataStreamController =
      StreamController<Map<AccountAddressBech32, AccountPrivateData>>();

  @override
  Map<AccountAddressBech32, AccountPrivateData> get data => _data;

  @override
  Stream<Map<AccountAddressBech32, AccountPrivateData>> get dataStream =>
      _dataStreamController.stream;

  @override
  void addPrivateData(AccountAddressBech32 address, AccountPrivateData data) {
    _updateData(address, data);
  }

  @override
  bool privateKeyExists(AccountAddressBech32 address) =>
      data[address]?.privateKey != null;

  @override
  bool seedPhraseExists(AccountAddressBech32 address) =>
      data[address]?.seedPhrase != null;

  @override
  Future<void> flushData() async {
    final addressesAndPrivateKeys = <(String, String?)>[];
    final addressesAndSeedPhrases = <(String, String?)>[];

    for (final entry in _data.entries) {
      final accountAddress = entry.key;
      addressesAndPrivateKeys.add((accountAddress, entry.value.privateKey));
      addressesAndSeedPhrases.add((accountAddress, entry.value.seedPhrase));
    }

    await _privateKeyRepository.saveWalletsPrivateKeys(
      addressesAndPrivateKeys: addressesAndPrivateKeys,
    );
    await _seedPhraseRepository.saveWalletsSeedPhrases(
      addressesAndSeedPhrases: addressesAndSeedPhrases,
    );
  }

  @override
  Future<void> loadData(String address) async {
    final privateKey = await _privateKeyRepository.getWalletPrivateKey(address);

    if (privateKey != null) {
      final seedPhrase =
          await _seedPhraseRepository.getWalletSeedPhrase(address);

      final data =
          AccountPrivateData(privateKey: privateKey, seedPhrase: seedPhrase);

      _updateData(address, data);
    }
  }

  @override
  Future<void> removeData(AccountAddressBech32 address) async {
    _updateData(address, null);

    await _privateKeyRepository.deleteWalletPrivateKey(address);
    await _seedPhraseRepository.deleteWalletSeedPhrase(address);
  }

  @override
  Future<void> clearData() async {
    _data.clear();
    _dataStreamController.add(_data);

    await _privateKeyRepository.deletePrivateKeys();
    await _seedPhraseRepository.deleteSeedPhrases();
  }

  @override
  Future<void> dispose() => _dataStreamController.close();

  void _updateData(AccountAddressBech32 address, AccountPrivateData? data) {
    if (data == null) {
      _data.remove(address);
    } else {
      _data[address] = data;
    }
    _dataStreamController.add(_data);
  }
}
