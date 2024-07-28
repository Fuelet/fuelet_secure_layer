import 'package:fuelet_secure_layer/src/utils/regexp_validator.dart';

class StringUtils {
  static String cutForbiddenSymbols(String txt) {
    return txt.replaceAll(RegExp(RegExpValidator.forbiddenSymblosRegEx), "0");
  }

  static bool isThereForbiddenSymbols(String txt) {
    return RegExp(RegExpValidator.forbiddenSymblosRegEx).hasMatch(txt);
  }
}
