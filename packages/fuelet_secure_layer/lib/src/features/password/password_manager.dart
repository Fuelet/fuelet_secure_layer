import 'dart:convert';
import 'dart:io' show Platform;
import 'dart:typed_data';

import 'package:aes256gcm/aes256gcm.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/password/password_management_exception.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage_password_manager.dart';
import 'package:local_auth/local_auth.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service.dart';

const _secretToEncrypt = 'fuelet_secure_layer_secret_kmr_wpu0XFM4uaq3kym';
const _legacyPasscodeKey = 'flt_password';
const _passwordKey = 'fuelet_secure_layer_password';
const _biometricPasswordKey = 'fuelet_biometric_encrypted_password';
const _secureEnclaveKey = 'fuelet.biometricKey';

final _passwordValidator =
    RegExp(r"""^[\w\s!@#\\$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+$""");

enum AuthorizationResponse {
  success,
  noPassword,
  wrongPassword,
  correctLegacyPasscode,
  wrongLegacyPasscode,
}

void validatePassword(String password) {
  if (password.length < 8) {
    throw PasswordLengthException(
        "Password must be at least 8 characters long.");
  }
  if (password.length > 64) {
    throw PasswordLengthException(
        "Password must be at most 64 characters long.");
  }
  if (!_passwordValidator.hasMatch(password)) {
    throw PasswordInvalidSymbolsException("Password contains invalid symbols.");
  }
}

String _hashPassword(String password) {
  final bytes = utf8.encode(password);
  return sha256.convert(bytes).toString();
}

Future<String> _createPasswordSecret(String password) {
  final passwordHash = _hashPassword(password);
  return Aes256Gcm.encrypt(_secretToEncrypt, passwordHash);
}

Future<String> _decryptPasswordSecret(String encryptedSecret, String password) {
  final passwordHash = _hashPassword(password);
  return Aes256Gcm.decrypt(encryptedSecret, passwordHash);
}

Future<bool> _validatePassword(String passwordString, String password) async {
  try {
    final decrypted = await _decryptPasswordSecret(passwordString, password);
    return decrypted == _secretToEncrypt;
  } catch (_) {
    return false;
  }
}

class PasswordManager {
  final IAccountsPrivateDataRepository _privateDataRepository;
  final FlutterSecureStorage _secureStorage;
  final SessionStoragePasswordManager _sessionStoragePasswordManager;
  final TPMService _tpmService;

  PasswordManager(
    this._privateDataRepository,
    this._secureStorage,
    this._sessionStoragePasswordManager,
    this._tpmService,
  );

  Future<bool> get passwordExists async {
    final value = await _secureStorage.read(
      key: _passwordKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    return value != null;
  }

  Future<bool> get legacyPasscodeExists async {
    final value = await _secureStorage.read(
      key: _legacyPasscodeKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    return value != null;
  }

  Future<void> setPassword(String password) async {
    validatePassword(password);
    final secretToStore = await _createPasswordSecret(password);
    await _secureStorage.write(
      key: _passwordKey,
      value: secretToStore,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    await _secureStorage.delete(
      key: _legacyPasscodeKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    await _sessionStoragePasswordManager.storeSessionStoragePassword(password);
  }

  Future<void> setSessionStoragePassword(String password) async {
    await _sessionStoragePasswordManager.storeSessionStoragePassword(password);
  }

  Future<void> storePasswordForBiometry(String password) async {
    validatePassword(password);

    if (Platform.isIOS) {
      final enclave = SecureEnclave();

      final keyResult = await _tpmService.generateKeyPair(_secureEnclaveKey);
      if (keyResult.isLeft()) {
        throw PasswordManagementException('Failed to generate Secure Enclave key');
      }

      final result = await enclave.encrypt(
        message: password,
        tag: _secureEnclaveKey,
      );

      if (result.error != null || result.value == null) {
        throw PasswordManagementException('Failed to encrypt with Secure Enclave');
      }

      final encryptedBytes = result.value;
      final base64 = base64Encode(encryptedBytes!);

      await _secureStorage.write(
        key: _biometricPasswordKey,
        value: base64,
        iOptions: const IOSOptions(
          accessibility: KeychainAccessibility.unlocked,
        ),
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );
    } else if (Platform.isAndroid) {
      final base64 = base64Encode(utf8.encode(password));
      await _secureStorage.write(
        key: _biometricPasswordKey,
        value: base64,
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: false,
        ),
      );
      final secretToStore = await _createPasswordSecret(password);
      await _secureStorage.write(
        key: _passwordKey,
        value: secretToStore,
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: false,
        ),
      );
      await _secureStorage.delete(
        key: _legacyPasscodeKey,
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: false,
        ),
      );
      await setSessionStoragePassword(password);
    } else {
      throw PasswordManagementException('Biometry not supported on this platform');
    }
  }

  Future<String?> retrievePasswordWithBiometry() async {
    try {
      final base64 = await _secureStorage.read(
        key: _biometricPasswordKey,
        iOptions: const IOSOptions(
          accessibility: KeychainAccessibility.unlocked,
        ),
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: false,
        ),
      );
      if (base64 == null) {
        return null;
      }

      if (Platform.isIOS) {
        final encryptedBytes = base64Decode(base64);
        final enclave = SecureEnclave();

        final result = await enclave.decrypt(
          message: encryptedBytes,
          tag: _secureEnclaveKey,
        );

        if (result.error != null || result.value == null) {
          return null;
        }

        return result.value;
      } else if (Platform.isAndroid) {
        final localAuth = LocalAuthentication();
        final didAuthenticate = await localAuth.authenticate(
          localizedReason: 'Authenticate to access password',
          options: const AuthenticationOptions(biometricOnly: true),
        );
        if (!didAuthenticate) {
          return null;
        }
        final password = utf8.decode(base64Decode(base64));
        return password;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<AuthorizationResponse> authorize(String input) async {
    final passwordString = await _secureStorage.read(
      key: _passwordKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    if (passwordString == null) {
      final passcode = await _secureStorage.read(
        key: _legacyPasscodeKey,
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: false,
        ),
      );
      if (passcode == null) return AuthorizationResponse.noPassword;
      if (passcode == input) return AuthorizationResponse.correctLegacyPasscode;
      return AuthorizationResponse.wrongLegacyPasscode;
    }

    if (await _validatePassword(passwordString, input)) {
      await _sessionStoragePasswordManager.storeSessionStoragePassword(input);
      return AuthorizationResponse.success;
    }

    return AuthorizationResponse.wrongPassword;
  }

  Future<void> resetPassword() async {
    await _privateDataRepository.clearData();
    await _secureStorage.delete(
      key: _legacyPasscodeKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    await _secureStorage.delete(
      key: _passwordKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    await _secureStorage.delete(
      key: _biometricPasswordKey,
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: false,
      ),
    );
    await _tpmService.deleteKey(_secureEnclaveKey);
  }

  Future<bool> hasSessionPassword() async {
    try {
      final password =
          await _sessionStoragePasswordManager.getSessionStoragePassword();
      final passwordString = await _secureStorage.read(
        key: _passwordKey,
        aOptions: const AndroidOptions(
          encryptedSharedPreferences: false,
        ),
      );
      if (passwordString == null) {
        return false;
      }
      final valid = await _validatePassword(passwordString, password);
      return valid;
    } catch (e) {
      return false;
    }
  }

  Future<void> resetSessionStoragePassword() {
    return _sessionStoragePasswordManager.resetSessionStoragePassword();
  }
}
