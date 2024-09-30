import 'package:aes256gcm/aes256gcm.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage_password_manager.dart';

// The encryption tag is used to easily distinguish between encrypted and non-encrypted data
String _encryptionTag = '#';

class EncryptionManager {
  final SessionStoragePasswordManager _sessionStoragePasswordManager;

  EncryptionManager(this._sessionStoragePasswordManager);

  Future<String> encryptWithPassword(String secret) async {
    final password =
        await _sessionStoragePasswordManager.getSessionStoragePassword();

    final encrypted = await Aes256Gcm.encrypt(secret, password);

    return '$_encryptionTag$encrypted';
  }

  /// Decrypts the [encrypted] string using the [cryptographicKey] if it was encrypted.
  /// Returns a tuple of decrypted string and a flag indicating whether the string was encrypted.
  Future<(String, bool)> decryptWithPassword(String encryptedSecret) async {
    final password =
        await _sessionStoragePasswordManager.getSessionStoragePassword();

    if (encryptedSecret.startsWith(_encryptionTag)) {
      encryptedSecret = encryptedSecret.substring(_encryptionTag.length);
      return (await Aes256Gcm.decrypt(encryptedSecret, password), true);
    }

    return (encryptedSecret, false);
  }
}
