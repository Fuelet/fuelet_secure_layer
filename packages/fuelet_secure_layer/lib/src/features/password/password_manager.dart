import 'dart:convert';
import 'dart:io' show Platform;

import 'package:aes256gcm/aes256gcm.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/password/password_management_exception.dart';
import 'package:fuelet_secure_layer/src/features/session_storage/session_storage_password_manager.dart';
import 'package:local_auth/local_auth.dart';
import 'package:secure_enclave/secure_enclave.dart';

const _secretToEncrypt = 'fuelet_secure_layer_secret_kmr_wpu0XFM4uaq3kym';
const _legacyPasscodeKey = 'flt_password';
const _passwordKey = 'fuelet_secure_layer_password';
const _biometricPasswordKey = 'fuelet_biometric_encrypted_password';
const _secureEnclaveKey = 'fuelet.biometricKey';

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
  final SecureEnclave _secureEnclave;

  PasswordManager(
    this._privateDataRepository,
    this._secureStorage,
    this._sessionStoragePasswordManager,
    this._secureEnclave,
  );

  Future<bool> get passwordExists async {
    final value = await _secureStorage.read(key: _passwordKey);
    return value != null;
  }

  Future<bool> get legacyPasscodeExists async {
    final value = await _secureStorage.read(key: _legacyPasscodeKey);
    return value != null;
  }

  Future<void> storePasswordForBiometry(String password) async {
    validatePassword(password);

    if (Platform.isIOS) {
      await _storePasswordWithSecureEnclave(password);
    } else if (Platform.isAndroid) {
      await _storePasswordWithAndroidKeychain(password);
    } else {
      throw PasswordManagementException(
          'Biometry not supported on this platform');
    }
  }

  Future<bool> authorizeBiometry() async {
    if (Platform.isIOS) {
      return _authorizeBiometryIOS();
    } else if (Platform.isAndroid) {
      return _authorizeBiometryAndroid();
    }

    return false;
  }

  Future<void> setPassword(String password) async {
    validatePassword(password);
    final encrypted = await _createPasswordSecret(password);
    await _secureStorage.write(key: _passwordKey, value: encrypted);
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

  Future<void> resetPassword() async {
    await _privateDataRepository.clearData();
    await _secureStorage.delete(key: _passwordKey);
    await _secureStorage.delete(key: _legacyPasscodeKey);
    await _secureStorage.delete(key: _biometricPasswordKey);
    await FlutterKeychain.remove(key: _biometricPasswordKey);
    _secureEnclave.removeKey(_secureEnclaveKey);
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

  Future<void> resetSessionStoragePassword() {
    return _sessionStoragePasswordManager.resetSessionStoragePassword();
  }

  Future<void> _storePasswordWithSecureEnclave(String password) async {
    final keyResult = await _secureEnclave.generateKeyPair(
      accessControl: AccessControlModel(
        tag: _secureEnclaveKey,
        options: [
          AccessControlOption.privateKeyUsage,
          AccessControlOption.biometryCurrentSet,
        ],
      ),
    );

    if (keyResult.error != null) {
      throw PasswordManagementException(
          'Failed to generate Secure Enclave key');
    }

    final result = await _secureEnclave.encrypt(
      message: password,
      tag: _secureEnclaveKey,
    );

    if (result.error != null || result.value == null) {
      throw PasswordManagementException(
          'Failed to encrypt with Secure Enclave');
    }

    final base64 = base64Encode(result.value!);
    await _secureStorage.write(
      key: _biometricPasswordKey,
      value: base64,
      iOptions: const IOSOptions(
        accessibility: KeychainAccessibility.unlocked,
      ),
    );
  }

  Future<void> _storePasswordWithAndroidKeychain(String password) async {
    final base64 = base64Encode(utf8.encode(password));
    await FlutterKeychain.put(key: _biometricPasswordKey, value: base64);
  }

  Future<bool> _authorizeBiometryIOS() async {
    final base64 = await _secureStorage.read(
      key: _biometricPasswordKey,
      iOptions: const IOSOptions(
        accessibility: KeychainAccessibility.unlocked,
      ),
    );

    if (base64 == null) return false;

    final encryptedBytes = base64Decode(base64);
    final result = await _secureEnclave.decrypt(
      message: encryptedBytes,
      tag: _secureEnclaveKey,
    );

    if (result.error != null || result.value == null) {
      return false;
    }

    await setSessionStoragePassword(result.value!);
    return true;
  }

  Future<bool> _authorizeBiometryAndroid() async {
    final base64 = await FlutterKeychain.get(key: _biometricPasswordKey);

    if (base64 == null) return false;

    final localAuth = LocalAuthentication();
    final didAuthenticate = await localAuth.authenticate(
      localizedReason: 'Authenticate to use saved password',
      options: const AuthenticationOptions(biometricOnly: true),
    );

    if (!didAuthenticate) return false;

    final decoded = utf8.decode(base64Decode(base64));

    await setSessionStoragePassword(decoded);
    return decoded.isNotEmpty;
  }
}
