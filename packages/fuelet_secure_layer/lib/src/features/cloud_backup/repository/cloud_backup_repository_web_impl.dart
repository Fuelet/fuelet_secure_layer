import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/repository/cloud_backup_repository.dart';

class CloudBackupRepositoryWebImpl implements ICloudBackupRepository {
  @override
  Future<List<String>> createBackups({required List<Account> accounts}) {
    return Future.value([]);
  }

  @override
  Future<bool> deleteBackups() {
    return Future.value(false);
  }

  @override
  Future<bool> deleteCertainBackup(String address) {
    return Future.value(false);
  }

  @override
  Future<Map<String, String>?> fetchBackups() {
    return Future.value(null);
  }

  @override
  Future<bool> isServiceAvailable() {
    return Future.value(false);
  }
}
