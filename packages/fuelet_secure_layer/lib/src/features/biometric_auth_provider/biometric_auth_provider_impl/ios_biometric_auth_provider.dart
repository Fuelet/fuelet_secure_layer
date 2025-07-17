import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_auth_provider.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_error_mapper/biometric_error_mapper_impl/ios_biometric_error_mapper.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';
import 'package:secure_enclave/secure_enclave.dart';

class IOSBiometricAuthProvider implements BiometryAuthProvider {
  final SecureEnclave _secureEnclave;
  final FlutterSecureStorage _secureStorage;
  final IOSBiometryErrorMapper _errorMapper;

  final String kSecureEnclaveKey = 'fuelet.biometricKey';

  IOSBiometricAuthProvider(this._secureEnclave, this._secureStorage)
      : _errorMapper = IOSBiometryErrorMapper();

  @override
  Future<BiometryAuthResult> store(String password) async {
    final isKeyCreated =
        await _secureEnclave.isKeyCreated(tag: kSecureEnclaveKey);
    if (isKeyCreated.value == true) {
      final removalResult = await _secureEnclave.removeKey(kSecureEnclaveKey);
      if (removalResult.error != null || !removalResult.value) return _resetAndReturn();
    }

    final keyResult = await _secureEnclave.generateKeyPair(
      accessControl: AccessControlModel(
        tag: kSecureEnclaveKey,
        options: [
          AccessControlOption.biometryCurrentSet,
        ],
      ),
    );

    if (keyResult.error != null || !keyResult.value) return _resetAndReturn();

    final result =
        await _secureEnclave.encrypt(message: password, tag: kSecureEnclaveKey);
    if (result.error != null || result.value == null) return _resetAndReturn();

    final base64 = base64Encode(result.value!);
    await _secureStorage.write(
      key: kBiometricPasswordKey,
      value: base64,
      iOptions: const IOSOptions(accessibility: KeychainAccessibility.unlocked),
    );

    return BiometryAuthResult.success;
  }

  @override
  Future<BiometryAuthResult> authorize({
    required Future<bool> Function(String password) validatePassword,
    required Future<void> Function(String password) setSessionPassword,
  }) async {
    final base64 = await _secureStorage.read(
      key: kBiometricPasswordKey,
      iOptions: const IOSOptions(accessibility: KeychainAccessibility.unlocked),
    );

    if (base64 == null) {
      return await _resetAndReturn();
    }

    final encryptedBytes = base64Decode(base64);
    final result = await _secureEnclave.decrypt(
      message: encryptedBytes,
      tag: kSecureEnclaveKey,
    );

    if (result.error != null) {
      return _errorMapper.map(
          code: result.error!.code.toString(),
          desc: result.error!.desc,
          resetBiometry: () async {
            return await _resetAndReturn();
          });
    }

    final decrypted = result.value;
    if (decrypted == null || decrypted.isEmpty) return _resetAndReturn();

    final isValid = await validatePassword(decrypted);
    if (!isValid) return _resetAndReturn();

    await setSessionPassword(decrypted);
    return BiometryAuthResult.success;
  }

  @override
  Future<void> reset() async {
    await _secureStorage.delete(key: kBiometricPasswordKey);
    await _secureEnclave.removeKey(kSecureEnclaveKey);
  }

  Future<BiometryAuthResult> _resetAndReturn() async {
    await reset();
    return BiometryAuthResult.resetCompleted;
  }
}
