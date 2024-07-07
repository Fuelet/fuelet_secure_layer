import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/di/common/common_locator.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonSecureLayerRegister {
  static Future<void> init() async {
    commonSecureLayerLocator
      ..registerSingleton(const FlutterSecureStorage())
      ..registerSingleton(SecureEnclave())
      ..registerSingletonAsync(() => SharedPreferences.getInstance());
  }
}
