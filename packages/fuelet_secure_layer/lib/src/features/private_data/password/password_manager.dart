import 'dart:convert';

import 'package:aes256gcm/aes256gcm.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/private_data/password/password_management_exception.dart';
import 'package:session_storage/session_storage.dart';

const _secretToEncrypt = 'fuelet_secure_layer_secret_kmr_wpu0XFM4uaq3kym';
const _legacyPasscodeKey = 'flt_password';
const _passwordKey = 'fuelet_secure_layer_password';
const _sessionStoragePasswordKey = 'session_password';

final _passwordValidator = RegExp(r'^[A-Za-z\d@$!%*?&]+$');

enum AuthorizationResponse {
  success,
  noPassword,
  wrongPassword,
  correctLegacyPasscode,
  wrongLegacyPasscode,
}

void _validatePassword(String password) {
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

Future<String> _createPasswordSecret(String password) async {
  final passwordHash = _hashPassword(password);
  return await Aes256Gcm.encrypt(_secretToEncrypt, passwordHash);
}

Future<String> _decryptPasswordSecret(
    String encryptedSecret, String password) async {
  final passwordHash = _hashPassword(password);
  return await Aes256Gcm.decrypt(encryptedSecret, passwordHash);
}

class PasswordManager {
  final FlutterSecureStorage _secureStorage;
  final SessionStorage _sessionStorage;
  final String _sessionsStorageAesPassword;

  PasswordManager(this._secureStorage, this._sessionStorage,
      this._sessionsStorageAesPassword);

  Future<void> setPassword(String password) async {
    _validatePassword(password);
    final secretToStore = await _createPasswordSecret(password);
    await _secureStorage.write(key: _passwordKey, value: secretToStore);
    // If the given key does not exist, nothing will happen.
    await _secureStorage.delete(key: _legacyPasscodeKey);
  }

  Future<AuthorizationResponse> authorize(String input) async {
    final passwordString = await _secureStorage.read(key: _passwordKey);
    // If passwordString is null, it means that the user might be using the legacy passcode policy
    if (passwordString == null) {
      final passcode = await _secureStorage.read(key: _legacyPasscodeKey);
      if (passcode == null) {
        return AuthorizationResponse.noPassword;
      }
      if (passcode == input) {
        return AuthorizationResponse.correctLegacyPasscode;
      }
      return AuthorizationResponse.wrongLegacyPasscode;
    }

    final decrypted = await _decryptPasswordSecret(passwordString, input);
    if (decrypted == _secretToEncrypt) {
      _storeSessionStoragePassword(input);
      return AuthorizationResponse.success;
    }
    return AuthorizationResponse.wrongPassword;
  }

  // TODO: Should trigger the removal of all private keys & seed phrases as well
  Future<void> resetPassword() async {
    await _secureStorage.delete(key: _legacyPasscodeKey);
    await _secureStorage.delete(key: _passwordKey);
  }

  Future<void> _storeSessionStoragePassword(String password) async {
    final encryptedPassword =
        await Aes256Gcm.encrypt(_sessionsStorageAesPassword, password);
    _sessionStorage[_sessionStoragePasswordKey] = encryptedPassword;
  }

  Future<String> decryptWithPassword(String encryptedSecret) async {
    final encryptedPassword = _sessionStorage[_sessionStoragePasswordKey];
    if (encryptedPassword == null) {
      throw PasswordNotSetException("Password is not set.");
    }
    final password =
        await Aes256Gcm.decrypt(encryptedPassword, _sessionsStorageAesPassword);
    return await Aes256Gcm.decrypt(encryptedSecret, password);
  }
}
