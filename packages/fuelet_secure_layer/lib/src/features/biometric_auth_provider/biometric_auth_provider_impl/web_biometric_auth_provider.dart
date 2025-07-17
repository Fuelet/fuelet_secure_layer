import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_auth_provider.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';

class WebBiometricAuthProvider implements BiometryAuthProvider {
  @override
  Future<BiometryAuthResult> store(String password) async {
    throw UnimplementedError();
  }

  @override
  Future<BiometryAuthResult> authorize({
    required Future<bool> Function(String password) validatePassword,
    required Future<void> Function(String password) setSessionPassword,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> reset() async {}
}
