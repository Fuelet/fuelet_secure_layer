import 'dart:convert';

import 'package:aes256gcm/aes256gcm.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_auth_provider.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';
import 'package:fuelet_secure_layer/src/features/password/password_management_exception.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage_password_manager.dart';

const _secretToEncrypt = 'fuelet_secure_layer_secret_kmr_wpu0XFM4uaq3kym';
const _legacyPasscodeKey = 'flt_password';
const _passwordKey = 'fuelet_secure_layer_password';

final _passwordValidator =
    RegExp(r"""^[\w\s!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+$""");

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
  final BiometryAuthProvider _biometryAuthProvider;

  PasswordManager(
    this._privateDataRepository,
    this._secureStorage,
    this._sessionStoragePasswordManager,
    this._biometryAuthProvider,
  );

  Future<bool> get passwordExists async {
    final value = await _secureStorage.read(key: _passwordKey);
    return value != null;
  }

  Future<bool> get legacyPasscodeExists async {
    final value = await _secureStorage.read(key: _legacyPasscodeKey);
    return value != null;
  }

  Future<BiometryAuthResult> storePasswordForBiometry() async {
    final passwordString = await _secureStorage.read(key: _passwordKey);
    final sessionPassword = await _sessionStoragePasswordManager.getSessionStoragePassword();
    
    if (passwordString == null) {
        await _biometryAuthProvider.reset();
        return BiometryAuthResult.resetCompleted;
    }
    final isPasswordValid = await _validatePassword(passwordString, sessionPassword);
    if (!isPasswordValid) {
      return BiometryAuthResult.wrongPassword;
    }

    return await _biometryAuthProvider.store(sessionPassword);
  }

  Future<BiometryAuthResult> authorizeBiometry() async {
    return _biometryAuthProvider.authorize(
      validatePassword: (password) async {
        final stored = await _secureStorage.read(key: _passwordKey);
        if (stored == null) {
          return false;
        }
        return _validatePassword(stored, password);
      },
      setSessionPassword: (password) async {
        await setSessionStoragePassword(password);
      },
    );
  }

  Future<void> setPassword(String password) async {
    validatePassword(password);
    final encrypted = await _createPasswordSecret(password);
    await _secureStorage.write(key: _passwordKey, value: encrypted);
    await _secureStorage.delete(key: _legacyPasscodeKey);
    await setSessionStoragePassword(password);
  }

  Future<void> setSessionStoragePassword(String password) =>
      _sessionStoragePasswordManager.storeSessionStoragePassword(password);

  Future<AuthorizationResponse> authorize(String input) async {
    final passwordString = await _secureStorage.read(key: _passwordKey);
    // If passwordString is null, it means that the user might be using the legacy passcode policy
    if (passwordString == null) {
      final legacyPassword = await _secureStorage.read(key: _legacyPasscodeKey);
      if (legacyPassword == null) return AuthorizationResponse.noPassword;
      return legacyPassword == input
          ? AuthorizationResponse.correctLegacyPasscode
          : AuthorizationResponse.wrongLegacyPasscode;
    }

    if (await _validatePassword(passwordString, input)) {
      await setSessionStoragePassword(input);
      return AuthorizationResponse.success;
    }
    return AuthorizationResponse.wrongPassword;
  }

  Future<void> resetBiometry() async {
    await _biometryAuthProvider.reset();
  }

  Future<void> resetPassword() async {
    await _privateDataRepository.clearData();
    await _secureStorage.delete(key: _passwordKey);
    await _secureStorage.delete(key: _legacyPasscodeKey);
    await _biometryAuthProvider.reset();
  }

  Future<bool> hasSessionPassword() async {
    try {
      final password =
          await _sessionStoragePasswordManager.getSessionStoragePassword();
      final passwordString = await _secureStorage.read(key: _passwordKey);
      if (passwordString == null) return false;
      return await _validatePassword(passwordString, password);
    } catch (_) {
      return false;
    }
  }

  Future<void> resetSessionStoragePassword() async {
    await _sessionStoragePasswordManager.resetSessionStoragePassword();
  }
}
