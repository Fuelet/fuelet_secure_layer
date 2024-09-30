import 'dart:convert';

import 'package:aes256gcm/aes256gcm.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/password/password_management_exception.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage_password_manager.dart';

const _secretToEncrypt = 'fuelet_secure_layer_secret_kmr_wpu0XFM4uaq3kym';
const _legacyPasscodeKey = 'flt_password';
const _passwordKey = 'fuelet_secure_layer_password';

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

Future<String> _createPasswordSecret(String password) {
  final passwordHash = _hashPassword(password);

  return Aes256Gcm.encrypt(_secretToEncrypt, passwordHash);
}

Future<String> _decryptPasswordSecret(String encryptedSecret, String password) {
  final passwordHash = _hashPassword(password);

  return Aes256Gcm.decrypt(encryptedSecret, passwordHash);
}

class PasswordManager {
  final IAccountsPrivateDataRepository _privateDataRepository;
  final FlutterSecureStorage _secureStorage;
  final SessionStoragePasswordManager _sessionStoragePasswordManager;

  PasswordManager(
    this._privateDataRepository,
    this._secureStorage,
    this._sessionStoragePasswordManager,
  );

  Future<bool> get passwordExists async {
    final value = await _secureStorage.read(key: _passwordKey);

    return value != null;
  }

  Future<bool> get legacyPasscodeExists async {
    final value = await _secureStorage.read(key: _legacyPasscodeKey);

    return value != null;
  }

  Future<void> setPassword(String password) async {
    _validatePassword(password);
    final secretToStore = await _createPasswordSecret(password);
    await _secureStorage.write(key: _passwordKey, value: secretToStore);
    await _secureStorage.delete(key: _legacyPasscodeKey);

    await _sessionStoragePasswordManager.storeSessionStoragePassword(password);
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
      await _sessionStoragePasswordManager.storeSessionStoragePassword(input);

      return AuthorizationResponse.success;
    }

    return AuthorizationResponse.wrongPassword;
  }

  Future<void> resetPassword() async {
    await _privateDataRepository.clearData();
    await _secureStorage.delete(key: _legacyPasscodeKey);
    await _secureStorage.delete(key: _passwordKey);
  }
}
