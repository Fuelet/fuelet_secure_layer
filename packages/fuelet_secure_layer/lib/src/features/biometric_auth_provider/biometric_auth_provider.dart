import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';

abstract class BiometryAuthProvider {
  Future<BiometryAuthResult> store(String password);
  Future<BiometryAuthResult> authorize({
    required Future<bool> Function(String password) validatePassword,
    required Future<void> Function(String password) setSessionPassword,
  });
  Future<void> reset();
}

const kBiometricPasswordKey = 'fuelet_biometric_encrypted_password';