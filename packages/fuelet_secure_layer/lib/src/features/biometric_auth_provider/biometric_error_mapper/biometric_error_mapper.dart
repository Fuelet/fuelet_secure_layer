import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';

abstract class BiometryErrorMapper {
  Future<BiometryAuthResult> map({
    required String code,
    required Future<BiometryAuthResult> Function() resetBiometry,
  });
}

 