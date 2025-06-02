
import 'package:fuelet_secure_layer/src/features/biometric_auth_provider/biometry_auth_result.dart';

class IOSBiometryErrorMapper {
  // iOS LAError codes are not documented properly so to find out the codes you have to check
  // https://github.com/xybp888/iOS-SDKs/blob/69f0ded9c7229040ce2c167fdb556487c36730ee/iPhoneOS9.3.sdk/System/Library/Frameworks/LocalAuthentication.framework/Headers/LAPublicDefines.h#L9
  static const String errorAuthenticationFailed = '-1';   // Biometric did not match
  static const String errorUserCancel = '-2';             // User dismissed the prompt
  static const String errorUserFallback = '-3';           // User chose password entry
  static const String errorSystemCancel = '-4';           // Interrupted by system (e.g. call)
  static const String errorPasscodeNotSet = '-5';         // No passcode set on device
  static const String errorBiometryNotAvailable = '-6';   // Biometry not available
  static const String errorBiometryNotEnrolled = '-7';    // No biometrics enrolled
  static const String errorBiometryLockout = '-8';        // Too many failed attempts
  static const String errorAppCancel = '-9';              // App canceled auth
  static const String errorInvalidContext = '-10';        // Invalid LAContext
  static const String errorNotInteractive = '-11';        // Called without UI permission

  // CryptoTokenKit errors (via SecureEnclave)
  // https://github.com/xybp888/iOS-SDKs/blob/69f0ded9c7229040ce2c167fdb556487c36730ee/iPhoneOS18.4.sdk/System/Library/Frameworks/CryptoTokenKit.framework/Headers/TKError.h#L4
  static const String cryptoTokenKitNotImplemented     = '-1'; // Method not implemented
  static const String cryptoTokenKitCommunicationError = '-2'; // Token communication failed
  static const String cryptoTokenKitCorruptedData      = '-3'; // Corrupted secure data
  static const String cryptoTokenKitCanceledByUser     = '-4'; // User cancelled auth
  static const String cryptoTokenKitAuthFailed         = '-5'; // Auth failed in enclave
  static const String cryptoTokenKitObjectNotFound     = '-6'; // Key object not found
  static const String cryptoTokenKitTokenNotFound      = '-7'; // Token not found (e.g. no biometrics)
  static const String cryptoTokenKitBadParameter       = '-8'; // Misused API
  static const String cryptoTokenKitAuthNeeded         = '-9'; // Re-auth required

  static final List<String> _laTryAgainCodes = [
    errorBiometryLockout,       // -8
    errorBiometryNotAvailable,  // -6
  ];

  static final List<String> _laSkippedCodes = [
    errorAuthenticationFailed, // -1
    errorUserCancel,           // -2
    errorUserFallback,         // -3
    errorSystemCancel,         // -4
    errorAppCancel,            // -9
    errorNotInteractive,       // -11
    errorInvalidContext,       // -10
  ];

  static final List<String> _laResetCodes = [
    errorPasscodeNotSet,        // -5
    errorBiometryNotEnrolled,   // -7
  ];

  static final List<String> _cryptoTryAgainCodes = [
    cryptoTokenKitCommunicationError,  // -2
    cryptoTokenKitAuthNeeded,          // -9
  ];

  static final List<String> _cryptoSkippedCodes = [
    cryptoTokenKitNotImplemented,  // -1
    cryptoTokenKitCanceledByUser,  // -4
    cryptoTokenKitAuthFailed,      // -5
    cryptoTokenKitBadParameter,    // -8
  ];

  static final List<String> _cryptoResetCodes = [
    cryptoTokenKitCorruptedData,   // -3
    cryptoTokenKitObjectNotFound,  // -6
    cryptoTokenKitTokenNotFound,   // -7
  ];

  Future<BiometryAuthResult> map({
    required String code,
    required String desc,
    required Future<BiometryAuthResult> Function() resetBiometry,
  }) async {
    final isCryptoTokenKit = desc.toLowerCase().contains('cryptotokenkit');

    if (isCryptoTokenKit) {
      if (_cryptoTryAgainCodes.contains(code)) {
        return BiometryAuthResult.tryAgainLater;
      }

      if (_cryptoResetCodes.contains(code)) {
        return await resetBiometry();
      }

      if (_cryptoSkippedCodes.contains(code)) {
        return BiometryAuthResult.skipped;
      }

      return BiometryAuthResult.skipped;
    } else {
      if (_laTryAgainCodes.contains(code)) {
        return BiometryAuthResult.tryAgainLater;
      }

      if (_laResetCodes.contains(code)) {
        return await resetBiometry();
      }

      if (_laSkippedCodes.contains(code)) {
        return BiometryAuthResult.skipped;
      }

      return BiometryAuthResult.skipped;
    }
  }
}