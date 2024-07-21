part of 'package:fuelet_secure_layer/env/env.dart';

abstract class Aes256GcmUtils {
  static Future<String> encrypt(String cleartext) async {
    return Aes256Gcm.encrypt(cleartext, _Env.aesPassword);
  }

  static Future<String> decrypt(String cipherText) async {
    return Aes256Gcm.decrypt(cipherText, _Env.aesPassword);
  }
}
