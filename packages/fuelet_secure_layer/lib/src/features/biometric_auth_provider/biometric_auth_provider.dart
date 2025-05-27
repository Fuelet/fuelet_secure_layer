import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

abstract class BiometryAuthProvider {
  Future<BiometryAuthResult> store(String password);
  Future<BiometryAuthResult> authorize({
    required Future<bool> Function(String password) validatePassword,
    required Future<void> Function(String password) setSessionPassword,
  });
  Future<void> reset();
}

const kSecureEnclaveKey = 'fuelet.biometricKey';
const kBiometricPasswordKey = 'fuelet_biometric_encrypted_password';



