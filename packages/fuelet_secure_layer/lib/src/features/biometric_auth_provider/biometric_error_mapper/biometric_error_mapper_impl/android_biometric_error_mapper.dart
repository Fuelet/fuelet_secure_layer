
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';

class AndroidBiometryErrorMapper {
  // Android BiometricPrompt error codes:
  // https://developer.android.com/reference/androidx/biometric/BiometricPrompt#constants

  static const String errorHwUnavailable = '1';          // ERROR_HW_UNAVAILABLE: Biometric hardware is unavailable.
  static const String errorUnableToProcess = '2';        // ERROR_UNABLE_TO_PROCESS: Unable to process the image.
  static const String errorCanceled = '3';               // ERROR_CANCELED: Authentication was canceled (e.g. system or app).
  static const String errorNegativeButton = '4';         // ERROR_NEGATIVE_BUTTON: User tapped the negative button (e.g. "Cancel").
  static const String errorSystemCancel = '5';           // ERROR_SYSTEM_CANCELLED: System interrupted (e.g. app backgrounded).
  static const String errorTimeout = '6';                // ERROR_TIMEOUT: Authentication timed out.
  static const String errorLockout = '7';                // ERROR_LOCKOUT: Too many failed attempts, locked out temporarily.
  static const String errorVendor = '8';                 // ERROR_VENDOR: Vendor-specific error.
  static const String errorUserCanceled = '10';          // ERROR_USER_CANCELED: User canceled (e.g. tapped outside the prompt).
  static const String errorHwNotPresent = '11';          // ERROR_HW_NOT_PRESENT: Device doesn't have biometric hardware.
  static const String errorNoBiometrics = '12';          // ERROR_NO_BIOMETRICS: User hasn't enrolled any biometrics.
  static const String errorSecurityUpdateRequired = '13';// ERROR_SECURITY_UPDATE_REQUIRED: Needs security update.
  static const String errorNoDeviceCredential = '14';    // ERROR_NO_DEVICE_CREDENTIAL: No suitable auth method enrolled.

  // Retryable error (temporary lockout)
  static const Set<String> _tryAgainCodes = {
    errorLockout, // 7
  };

  // Critical errors — require biometric reset in app
  static const Set<String> _resetCodes = {
    errorHwUnavailable,          // 1
    errorHwNotPresent,           // 11
    errorNoBiometrics,           // 12
    errorNoDeviceCredential,     // 14
    errorSecurityUpdateRequired, // 13
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