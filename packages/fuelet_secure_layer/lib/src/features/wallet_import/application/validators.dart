import 'package:fuelet_secure_layer/src/utils/regexp_validator.dart';

class SeedPhraseValidator {
  static bool validate(String phrase) {
    /// if the phrase is valid, returns [true], else returns [false]
    final words = phrase.split(' ');
    if (words.length != 12) {
      return false;
    }

    if (!RegExpValidator.seedPhrase(phrase)) {
      return false;
    }

    return true;
  }
}
