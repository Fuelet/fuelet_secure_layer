import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_auth_provider.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_error_mapper/biometric_error_mapper_impl/android_biometric_error_mapper.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/fuelet_biometric_android.dart';

class AndroidBiometricAuthProvider implements BiometryAuthProvider {
  final FlutterSecureStorage _secureStorage;
  final AndroidBiometryErrorMapper _errorMapper;

  final String kAndroidKeyStoreKey = 'fuelet.biometricKey';

  AndroidBiometricAuthProvider(this._secureStorage)
      : _errorMapper = AndroidBiometryErrorMapper();

  @override
  Future<BiometryAuthResult> store(String password) async {
    try {
      final hasKey = await FueletBiometricAndroid.exists(kAndroidKeyStoreKey);
      if (hasKey) {
        try {
          await FueletBiometricAndroid.delete(kAndroidKeyStoreKey);
        } catch (_) {
          return await _resetAndReturn();
        }
      }
      final encrypted =
          await FueletBiometricAndroid.encrypt(kAndroidKeyStoreKey, password);
     
      if (hasKey) await _secureStorage.delete(key: kBiometricPasswordKey);
      await _secureStorage.write(
        key: kBiometricPasswordKey,
        value: encrypted,
      );
      return BiometryAuthResult.success;
    } catch (e) {
      return await _resetAndReturn();
    }
  }

  @override
  Future<BiometryAuthResult> authorize({
    required Future<bool> Function(String password) validatePassword,
    required Future<void> Function(String password) setSessionPassword,
  }) async {
    final encrypted = await _secureStorage.read(
      key: kBiometricPasswordKey,
    );
    if (encrypted == null) return await _resetAndReturn();

    try {
      final decrypted = await FueletBiometricAndroid.decrypt(
          kAndroidKeyStoreKey, encrypted);
      if (decrypted == null || decrypted.isEmpty) return await _resetAndReturn();

      final isValid = await validatePassword(decrypted);
      if (!isValid) return await _resetAndReturn();

      await setSessionPassword(decrypted);
      return BiometryAuthResult.success;
    } on PlatformException catch (e) {
      return _errorMapper.map(
          code: e.code,
          resetBiometry: () async {
            return await _resetAndReturn();
          });
    } catch (_) {
      return BiometryAuthResult.skipped;
    }
  }

  @override
  Future<void> reset() async {
    await _secureStorage.delete(key: kBiometricPasswordKey);
    FueletBiometricAndroid.delete(kAndroidKeyStoreKey);
  }

  Future<BiometryAuthResult> _resetAndReturn() async {
    await reset();
    return BiometryAuthResult.resetCompleted;
  }
}
