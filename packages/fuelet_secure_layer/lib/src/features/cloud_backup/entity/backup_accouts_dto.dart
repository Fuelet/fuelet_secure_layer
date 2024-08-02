import 'dart:convert';

import 'package:fuelet_secure_layer/src/utils/aes256gcm_utils.dart';

class BackupAccountsDto {
  // accountAddress : seedPhraseOrPrivateKey
  final Map<String, String> backupAccounts;

  const BackupAccountsDto({
    required this.backupAccounts,
  });

  static BackupAccountsDto emptyAccountsDto =
      const BackupAccountsDto(backupAccounts: {});

  static Future<BackupAccountsDto> fromRawJson(String rawJson, String password) async {
    final Map<String, dynamic> encryptedAccounts = jsonDecode(rawJson);
    final Map<String, String> decriptedAccounts = {};

    for (var key in encryptedAccounts.keys) {
      decriptedAccounts[key] =
          await Aes256GcmUtils.decrypt(encryptedAccounts[key]!, password);
    }

    return BackupAccountsDto(
      backupAccounts: decriptedAccounts,
    );
  }

  Future<String> toRawJson(String password) async {
    final Map<String, String> encryptedAccounts = {};

    for (var key in backupAccounts.keys) {
      encryptedAccounts[key] =
          await Aes256GcmUtils.encrypt(backupAccounts[key]!, password);
    }

    return jsonEncode(encryptedAccounts);
  }

  BackupAccountsDto copyWith({
    Map<String, String>? backupAccounts,
  }) {
    return BackupAccountsDto(
      backupAccounts: backupAccounts ?? this.backupAccounts,
    );
  }

  bool isEmpty() {
    return backupAccounts.isEmpty;
  }
}
