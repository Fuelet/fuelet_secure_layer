import 'package:flutter/services.dart';

class FueletBiometricAndroid {
  static const _channel = MethodChannel('biometric_keystore');

  static Future<String> encrypt(String key, String value) async {
    final result = await _channel.invokeMethod<String>('encrypt', {
      'key': key,
      'value': value,
    });
    return result!;
  }

  static Future<String?> decrypt(String key, String encrypted) async {
    return await _channel.invokeMethod<String>('decrypt', {
      'key': key,
      'encrypted': encrypted,
    });
  }

  static Future<void> delete(String key) async {
    return await _channel.invokeMethod('delete', {
      'key': key,
    });
  }

  static Future<bool> exists(String key) async {
    return await _channel.invokeMethod<bool>('exists', {
          'key': key,
        }) ??
        false;
  }
}
