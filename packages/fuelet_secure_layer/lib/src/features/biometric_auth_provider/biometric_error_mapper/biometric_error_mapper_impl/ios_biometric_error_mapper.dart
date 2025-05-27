import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_error_mapper/biometric_error_mapper.dart';


class IOSBiometryErrorMapper implements BiometryErrorMapper {
  static const _tryAgainCodes = {'-8'};
  static const _resetCodes = {'-3', '-4', '-5', '-6', '-7', '-10', '-11'};

  @override
  Future<BiometryAuthResult> map({
    required String code,
    required Future<BiometryAuthResult> Function() resetBiometry,
  }) async {
    if (_tryAgainCodes.contains(code)) return BiometryAuthResult.tryAgainLater;
    if (_resetCodes.contains(code)) return await resetBiometry();

    return BiometryAuthResult.skipped;
  }
}