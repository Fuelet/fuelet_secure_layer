import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';

class AndroidBiometryErrorMapper {
  // Android BiometricPrompt error codes:
  // https://developer.android.com/reference/androidx/biometric/BiometricPrompt#constants

  static const String errorHwUnavailable = '1'; // ERROR_HW_UNAVAILABLE: Biometric hardware is unavailable.
  static const String errorUnableToProcess = '2'; // ERROR_UNABLE_TO_PROCESS: Unable to process the image.
  static const String errorTimeout = '3'; // ERROR_TIMEOUT: Authentication timed out.
  static const String errorNoSpace = '4'; // ERROR_NO_SPACE: No space available for biometric data.
  static const String errorSystemCancel = '5'; // ERROR_CANCELED: System canceled authentication (e.g. app backgrounded).
  static const String errorLockout = '7'; // ERROR_LOCKOUT: Too many failed attempts, temporarily locked out.
  static const String errorVendor = '8'; // ERROR_VENDOR: Vendor-specific error.
  static const String errorLockoutPermanent = '9'; // ERROR_LOCKOUT_PERMANENT: Too many failed attempts, permanently locked out.
  static const String errorUserCanceled = '10'; // ERROR_USER_CANCELED: User canceled authentication (e.g. tapped outside).
  static const String errorNoBiometrics = '11'; // ERROR_NO_BIOMETRICS: No biometrics enrolled.
  static const String errorHwNotPresent = '12'; // ERROR_HW_NOT_PRESENT: No biometric hardware available on this device.
  static const String errorNoDeviceCredential = '14'; // ERROR_NO_DEVICE_CREDENTIAL: Device credential authentication required.
  static const String cipherInitFailed = 'CIPHER_INIT_FAILED'; // CIPHER_INIT_FAILED: Cipher initialization failed.

  // Retryable error
  static const Set<String> _tryAgainCodes = {
    errorHwUnavailable, // 1
    errorLockout, // 7
    errorNoSpace, // 4
  };

  // Critical errors — require biometric reset in app
  static const Set<String> _resetCodes = {
    errorHwNotPresent, // 11
    errorNoBiometrics, // 12
    errorNoDeviceCredential, // 14
    cipherInitFailed,
  };

  Future<BiometryAuthResult> map({
    required String code,
    required Future<BiometryAuthResult> Function() resetBiometry,
  }) async {
    if (_tryAgainCodes.contains(code)) {
      return BiometryAuthResult.tryAgainLater;
    }

    if (_resetCodes.contains(code)) {
      return await resetBiometry();
    }

    return BiometryAuthResult.skipped;
  }
}
