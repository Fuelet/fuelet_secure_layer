import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_error_mapper/biometric_error_mapper.dart';

class WebBiometryErrorMapper implements BiometryErrorMapper {

  @override
  Future<BiometryAuthResult> map({
    required String code,
    required Future<BiometryAuthResult> Function() resetBiometry,
  }) async {
   throw UnimplementedError();
  }
}