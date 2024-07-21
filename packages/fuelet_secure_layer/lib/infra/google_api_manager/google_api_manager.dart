import 'dart:convert';

import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/models/backup_accouts_dto.dart';
import 'package:fuelet_secure_layer/infra/cloud_backup/utils/backup_utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart';

class GoogleApiManager {
  final googleSignIn = GoogleSignIn(
    scopes: [
      DriveApi.driveAppdataScope,
    ],
  );

  Future<DriveApi> _configureDriveApi([
    bool resignGoogle = false,
  ]) async {
    if (resignGoogle) {
      await googleSignIn.signOut();
    }

    if (googleSignIn.currentUser == null) {
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        throw Exception("Google Sign In failed");
      }
    }

    final httpClient = await googleSignIn.authenticatedClient();

    if (httpClient == null) {
      throw Exception("Failed to obtain an authenticated http client");
    }

    return DriveApi(httpClient);
  }

  Future<String?> _getBackupFileId(DriveApi drive) async {
    final filesRes = await drive.files.list(
      q: "name = 'backups.json' and 'appDataFolder' in parents",
      spaces: 'appDataFolder',
    );

    if (filesRes.files != null && filesRes.files!.isNotEmpty) {
      return filesRes.files!.first.id;
    }

    return null;
  }

  Future<BackupAccountsDto?> getBackupAccounts({
    bool resignGoogle = false,
  }) async {
    final drive = await _configureDriveApi(resignGoogle);

    final backupFileId = await _getBackupFileId(drive);

    if (backupFileId == null) return null;

    final contentResponse = await drive.files.get(
      backupFileId,
      downloadOptions: DownloadOptions.fullMedia,
    );

    if (contentResponse is! Media) return null;

    final stringContent =
        await BackupUtils.streamToString(contentResponse.stream);

    return await BackupAccountsDto.fromRawJson(stringContent);
  }

  Future<bool> saveBackups(
    BackupAccountsDto backup, [
    bool resignGoogle = false,
  ]) async {
    final drive = await _configureDriveApi(resignGoogle);

    final backupFileId = await _getBackupFileId(drive);

    final jsonString = await backup.toRawJson();
    final uploadMedia = Media(
      Stream<List<int>>.fromIterable([utf8.encode(jsonString)]),
      jsonString.length,
      contentType: 'application/json',
    );

    if (backupFileId == null) {
      final file = File()
        ..name = 'backups.json'
        ..parents = ['appDataFolder'];

      await drive.files.create(file, uploadMedia: uploadMedia);
    } else {
      await drive.files.update(
        File(),
        backupFileId,
        uploadMedia: uploadMedia,
      );
    }

    return true;
  }
}
