import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometric_error_mapper/biometric_error_mapper.dart';

class AndroidBiometryErrorMapper implements BiometryErrorMapper {
  // https://developer.android.com/reference/androidx/biometric/BiometricPrompt#constants
  static const _tryAgainCodes = {'7'};
  static const _resetCodes = {'3', '9', '10', '11'};

  @override
  Future<BiometryAuthResult> map({
    required String code,
    required Future<BiometryAuthResult> Function() resetBiometry,
  }) async {
    final normalized = code.toLowerCase();

    if (_tryAgainCodes.contains(normalized)) {
      return BiometryAuthResult.tryAgainLater;
    }

    if (_resetCodes.contains(normalized)) {
      return await resetBiometry();
    }

    return BiometryAuthResult.skipped;
  }
}