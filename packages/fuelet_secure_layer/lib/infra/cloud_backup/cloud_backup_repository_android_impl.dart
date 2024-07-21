import 'package:fuelet_secure_layer/core/account/entity/account.dart';
import 'package:fuelet_secure_layer/core/account/entity/account_x.dart';
import 'package:fuelet_secure_layer/core/cloud_backup/repository/cloud_backup_repository.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/models/backup_accouts_dto.dart';
import 'package:fuelet_secure_layer/infra/google_api_manager/google_api_manager.dart';

class CloudBackupRepositoryAndroidImpl implements ICloudBackupRepository {
  final GoogleApiManager googleApiManager;

  const CloudBackupRepositoryAndroidImpl(this.googleApiManager);

  @override
  Future<Map<String, String>> createBackups({
    required List<Account> accounts,
  }) async {
    Map<String, String> backups = {};

    for (var account in accounts) {
      if (account.isOwner) {
        backups = {
          ...backups,
          account.address: account.seedPhrase ?? account.privateKey!,
        };
      }
    }

    try {
      final existingBackup = await googleApiManager.getBackupAccounts();

      BackupAccountsDto backupsToSave;
      if (existingBackup != null) {
        backupsToSave = existingBackup.copyWith(
          backupAccounts: {
            ...existingBackup.backupAccounts,
            ...backups,
          },
        );
      } else {
        backupsToSave = BackupAccountsDto(
          backupAccounts: {
            ...backups,
          },
        );
      }

      final savedSuccessfully =
          await googleApiManager.saveBackups(backupsToSave);
      if (savedSuccessfully) {
        return backups;
      } else {
        return {};
      }
    } catch (e) {
      return {};
    }
  }

  @override
  Future<bool> deleteBackups() async {
    try {
      return await googleApiManager.saveBackups(
        const BackupAccountsDto(
          backupAccounts: {},
        ),
      );
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Map<String, String>?> fetchBackups() async {
    try {
      final existingBackup = await googleApiManager.getBackupAccounts();

      if (existingBackup != null) {
        return existingBackup.backupAccounts;
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> isServiceAvailable() async => true;

  @override
  Future<bool> deleteCertainBackup(String address) async {
    try {
      final existingBackup = await googleApiManager.getBackupAccounts();
      final accounts = {...existingBackup?.backupAccounts ?? {}};

      return await googleApiManager.saveBackups(
        BackupAccountsDto(
          backupAccounts: accounts..removeWhere((key, value) => key == address),
        ),
      );
    } catch (e) {
      return false;
    }
  }
}
