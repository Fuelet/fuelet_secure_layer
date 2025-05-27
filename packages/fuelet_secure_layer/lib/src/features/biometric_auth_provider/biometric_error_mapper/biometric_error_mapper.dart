// biometry_error_mapper.dart

import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

abstract class BiometryErrorMapper {
  Future<BiometryAuthResult> map({
    required String code,
    required Future<BiometryAuthResult> Function() resetBiometry,
  });
}

 