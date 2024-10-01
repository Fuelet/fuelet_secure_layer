import 'package:aes256gcm/aes256gcm.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/constants/session_storage_constants.dart';
import 'package:session_storage/session_storage.dart';

class SessionStoragePasswordManager {
  final SessionStorage _sessionStorage;
  final String _sessionsStorageAesPassword;

  SessionStoragePasswordManager(
    this._sessionStorage,
    this._sessionsStorageAesPassword,
  );

  Future<void> storeSessionStoragePassword(String password) async {
    final encryptedPassword =
        await Aes256Gcm.encrypt(password, _sessionsStorageAesPassword);
    _sessionStorage[SessionStorageConstants.sessionStoragePasswordKey] =
        encryptedPassword;
  }

  Future<String> getSessionStoragePassword() async {
    final encryptedPassword =
        _sessionStorage[SessionStorageConstants.sessionStoragePasswordKey];
    if (encryptedPassword == null) {
      throw PasswordNotSetException("Password is not set.");
    }
    return await Aes256Gcm.decrypt(
        encryptedPassword, _sessionsStorageAesPassword);
  }

  Future<void> resetSessionStoragePassword() async {
    _sessionStorage.remove(SessionStorageConstants.sessionStoragePasswordKey);
  }
}
