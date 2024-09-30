import 'package:fuelet_secure_layer/src/di/common/common_register.dart';
import 'package:fuelet_secure_layer/src/di/public/public_register.dart';

class SecureLayerDependenciesBuilder {
  static Future<void> build(
      String cloudBackupAesPassword, String sessionsStorageAesPassword) async {
    await CommonSecureLayerRegister.init();
    await PrivateSecureLayerRegister.init(sessionsStorageAesPassword);
    await PublicSecureLayerRegister.init(cloudBackupAesPassword);
  }
}
