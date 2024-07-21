import 'package:aes256gcm/aes256gcm.dart';
import 'package:envied/envied.dart';

part '../utils/aes256gcm_utils.dart';
part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class _Env {
  @EnviedField(varName: 'AES_PASSWORD')
  static final String aesPassword = __Env.aesPassword;
}
