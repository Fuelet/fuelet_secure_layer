import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_x.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/entity/backup_accouts_dto.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/repository/cloud_backup_repository.dart';
import 'package:fuelet_secure_layer/src/features/google_api/manager/google_api_manager.dart';

class CloudBackupRepositoryAndroidImpl implements ICloudBackupRepository {
  final GoogleApiManager googleApiManager;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;
  final String _cloudBackupAesPassword;

  const CloudBackupRepositoryAndroidImpl(
    this.googleApiManager,
    this._accountsPrivateDataRepository,
    this._cloudBackupAesPassword,
  );

  @override
  Future<Map<String, String>> createBackups({
    required List<Account> accounts,
  }) async {
    Map<String, String> backups = {};

    for (final account in accounts) {
      if (account.isOwner) {
        final data = await _accountsPrivateDataRepository
            .getAccountPrivateData(account.fuelAddress.bech32Address);
        backups = {
          ...backups,
          account.fuelAddress.bech32Address:
              data?.seedPhrase ?? data!.privateKey,
        };
      }
    }

    try {
      final existingBackup =
          await googleApiManager.getBackupAccounts(_cloudBackupAesPassword);

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

      final savedSuccessfully = await googleApiManager.saveBackups(
          backupsToSave, _cloudBackupAesPassword);
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
        _cloudBackupAesPassword,
      );
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Map<String, String>?> fetchBackups() async {
    try {
      final existingBackup =
          await googleApiManager.getBackupAccounts(_cloudBackupAesPassword);

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
      final existingBackup =
          await googleApiManager.getBackupAccounts(_cloudBackupAesPassword);
      final accounts = {...existingBackup?.backupAccounts ?? {}};

      return await googleApiManager.saveBackups(
          BackupAccountsDto(
            backupAccounts: accounts
              ..removeWhere((key, value) => key == address),
          ),
          _cloudBackupAesPassword);
    } catch (e) {
      return false;
    }
  }
}
