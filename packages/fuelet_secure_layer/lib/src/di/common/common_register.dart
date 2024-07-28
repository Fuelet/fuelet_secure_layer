import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fuelet_secure_layer/src/di/common/common_locator.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/raw_manager.dart';
import 'package:secure_enclave/secure_enclave.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CommonSecureLayerRegister {
  static Future<void> init() async {
    commonSecureLayerLocator
      ..registerSingleton(const FlutterSecureStorage())
      ..registerSingleton(SecureEnclave())
      ..registerSingletonAsync(() => SharedPreferences.getInstance())
      ..registerSingletonWithDependencies(
        () => SharedPrefsRawManager(
            commonSecureLayerLocator<SharedPreferences>()),
        dependsOn: [SharedPreferences],
      );
  }
}
