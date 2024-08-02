import 'package:flutter_cloud_kit/flutter_cloud_kit.dart';
import 'package:flutter_cloud_kit/types/cloud_ket_record.dart';
import 'package:flutter_cloud_kit/types/cloud_kit_account_status.dart';
import 'package:flutter_cloud_kit/types/database_scope.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account_x.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/cloud_backup/repository/cloud_backup_repository.dart';
import 'package:fuelet_secure_layer/src/utils/aes256gcm_utils.dart';
import 'package:fuelet_secure_layer/src/utils/logger.dart';

const _cloudKitRecordType = 'AccountBackup';
const _privateDbScope = CloudKitDatabaseScope.private;
const _secretAttribute = 'secret';

class CloudBackupRepositoryIOSImpl implements ICloudBackupRepository {
  final FlutterCloudKit cloudKit;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;
  final String _cloudBackupAesPassword;

  const CloudBackupRepositoryIOSImpl(
    this.cloudKit,
    this._accountsPrivateDataRepository,
    this._cloudBackupAesPassword,
  );

  Future<bool> _checkCloudKitAvailable() async {
    try {
      CloudKitAccountStatus accountStatus = await cloudKit.getAccountStatus();
      return accountStatus == CloudKitAccountStatus.available;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _deleteAccount(String accountAddress) async {
    try {
      await cloudKit.deleteRecord(
          scope: _privateDbScope, recordName: accountAddress);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Inserts or updates the account record in the CloudKit private database
  Future<bool> _upsertAccount(
      String accountAddress, String secret, String password) async {
    try {
      // ignore the result cause we don't care if the key existed
      await _deleteAccount(accountAddress);
      final encryptedSecret = await Aes256GcmUtils.encrypt(secret, password);
      final record = {_secretAttribute: encryptedSecret};
      await cloudKit.saveRecord(
        scope: _privateDbScope,
        recordType: _cloudKitRecordType,
        record: record,
        recordName: accountAddress,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<Map<String, String>> _recordsToAccounts(
      List<CloudKitRecord> records, String password) async {
    final Map<String, String> decryptedAccounts = {};
    for (final record in records) {
      try {
        final accountName = record.recordName;
        final secret = record.values[_secretAttribute];
        final decryptedSecret = await Aes256GcmUtils.decrypt(secret, password);
        decryptedAccounts[accountName] = decryptedSecret;
      } catch (e) {
        logger.e('Got error parsing account dto: $e. Skipping');
      }
    }
    return decryptedAccounts;
  }

  Future<Map<String, String>> _getAccounts(String password) async {
    try {
      final records = await cloudKit.getRecordsByType(
        scope: _privateDbScope,
        recordType: _cloudKitRecordType,
      );

      return await _recordsToAccounts(records, password);
    } catch (e) {
      logger.e('Got error parsing accounts dto: $e');
      return {};
    }
  }

  @override
  Future<Map<String, String>> createBackups({
    required List<Account> accounts,
  }) async {
    if (!await _checkCloudKitAvailable()) {
      return {};
    }

    Map<String, String> backups = {};

    for (var account in accounts) {
      if (account.isOwner) {
        final data = _accountsPrivateDataRepository.data[account.address];
        backups = {
          ...backups,
          account.address: data?.seedPhrase ?? data!.privateKey,
        };
      }
    }

    Map<String, String> successfullySavedBackups = {};

    for (var entry in backups.entries) {
      if (await _upsertAccount(
          entry.key, entry.value, _cloudBackupAesPassword)) {
        successfullySavedBackups[entry.key] = entry.value;
      }
    }

    return successfullySavedBackups;
  }

  @override
  Future<bool> deleteBackups() async {
    if (!await _checkCloudKitAvailable()) {
      return false;
    }
    bool isSuccess = true;
    final accounts = await _getAccounts(_cloudBackupAesPassword);

    for (var accountAddress in accounts.keys) {
      if (!await _deleteAccount(accountAddress) && isSuccess) {
        isSuccess = false;
      }
    }

    return isSuccess;
  }

  @override
  Future<Map<String, String>?> fetchBackups() async {
    if (!await _checkCloudKitAvailable()) {
      return null;
    }
    return await _getAccounts(_cloudBackupAesPassword);
  }

  @override
  Future<bool> isServiceAvailable() => _checkCloudKitAvailable();

  @override
  Future<bool> deleteCertainBackup(String address) async {
    if (!await _checkCloudKitAvailable()) {
      return false;
    }

    final isDone = await _deleteAccount(address);

    return isDone;
  }
}
