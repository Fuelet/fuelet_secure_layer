import 'package:aes256gcm/aes256gcm.dart';

abstract class Aes256GcmUtils {
  static Future<String> encrypt(String cleartext, String password) async {
    return Aes256Gcm.encrypt(cleartext, password);
  }

  static Future<String> decrypt(String cipherText, String password) async {
    return Aes256Gcm.decrypt(cipherText, password);
  }
}
