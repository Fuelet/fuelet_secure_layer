import 'package:aes256gcm/aes256gcm.dart';
import 'package:fuelet_secure_layer/src/features/password/password_management_exception.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/constants/session_storage_constants.dart';
import 'package:session_storage/session_storage.dart';

// The encryption tag is used to easily distinguish between encrypted and non-encrypted data
String _encryptionTag = '#';

class EncryptionManager {
  final SessionStorage _sessionStorage;
  final String _sessionsStorageAesPassword;

  EncryptionManager(this._sessionStorage, this._sessionsStorageAesPassword);

  Future<String> encryptWithPassword(String secret) async {
    final password = await _getDecryptedPassword();

    final encrypted = await Aes256Gcm.encrypt(secret, password);

    return '$_encryptionTag$encrypted';
  }

  /// Decrypts the [encrypted] string using the [cryptographicKey] if it was encrypted.
  /// Returns a tuple of decrypted string and a flag indicating whether the string was encrypted.
  Future<(String, bool)> decryptWithPassword(String encryptedSecret) async {
    final password = await _getDecryptedPassword();

    if (encryptedSecret.startsWith(_encryptionTag)) {
      encryptedSecret = encryptedSecret.substring(_encryptionTag.length);
      return (await Aes256Gcm.decrypt(encryptedSecret, password), true);
    }

    return (encryptedSecret, false);
  }

  Future<String> _getDecryptedPassword() async {
    final encryptedPassword =
        _sessionStorage[SessionStorageConstants.sessionStoragePasswordKey];
    if (encryptedPassword == null) {
      throw PasswordNotSetException("Password is not set.");
    }
    final password =
        await Aes256Gcm.decrypt(encryptedPassword, _sessionsStorageAesPassword);

    return password;
  }
}
