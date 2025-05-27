import 'package:flutter/services.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_auth_provider.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_error_mapper/biometric_error_mapper.dart';
import 'package:fuelet_secure_layer/src/features/password/fuelet_biometric_android.dart';

class AndroidBiometricAuthProvider implements BiometryAuthProvider {

  final BiometryErrorMapper _errorMapper;

  AndroidBiometricAuthProvider(this._errorMapper);

  @override
  Future<BiometryAuthResult> store(String password) async {
    try {
      final encrypted =
          await FueletBiometricAndroid.encrypt(kBiometricPasswordKey, password);
      await FlutterKeychain.put(key: kBiometricPasswordKey, value: encrypted);
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
    final encrypted = await FlutterKeychain.get(key: kBiometricPasswordKey);
    if (encrypted == null) return await _resetAndReturn();

    try {
      final decrypted = await FueletBiometricAndroid.decrypt(
          kBiometricPasswordKey, encrypted);
      if (decrypted == null || decrypted.isEmpty) return await _resetAndReturn();

      final isValid = await validatePassword(decrypted);
      if (!isValid) return await _resetAndReturn();

      await setSessionPassword(decrypted);
      return BiometryAuthResult.success;
    } on PlatformException catch (e) {
      return _errorMapper.map(code: e.code, resetBiometry: () async {
        return await _resetAndReturn();
      });
    } catch (_) {
      return BiometryAuthResult.skipped;
    }
  }

  @override
  Future<void> reset() async {
    await FlutterKeychain.remove(key: kBiometricPasswordKey);
  }

   Future<BiometryAuthResult> _resetAndReturn() async {
    await reset();
    return BiometryAuthResult.resetRequired;
  }
}
