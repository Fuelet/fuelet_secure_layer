import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

abstract class ICloudBackupRepository {
  /// Attempts to save the provided backups into cloud.
  /// Returns the accounts that were saved successfully.
  Future<List<String>> createBackups({
    required List<Account> accounts,
  });

  Future<bool> deleteBackups();

  Future<bool> deleteCertainBackup(String address);

  Future<Map<String, String>?> fetchBackups();

  Future<bool> isServiceAvailable();
}
