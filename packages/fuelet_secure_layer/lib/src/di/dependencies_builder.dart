import 'package:fuelet_secure_layer/src/di/common/common_register.dart';
import 'package:fuelet_secure_layer/src/di/public/public_register.dart';

class SecureLayerDependenciesBuilder {
  static Future<void> build() async {
    await CommonSecureLayerRegister.init();
    await PrivateSecureLayerRegister.init();
    await PublicSecureLayerRegister.init();
  }
}
