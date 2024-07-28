abstract class RegExpValidator {
  static final _seedPhraseRegex = RegExp(
    r'^[a-zA-Z]+(?: [a-zA-Z]+)*$',
  );
  static final _digitsRegex = RegExp(
    r'^[0-9]+$',
  );

  // {1, 10} - domain name length
  static final _urlWithProtocolRegex = RegExp(
      r"https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,10}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)");

  static final _urlWithoutProtocolRegex = RegExp(
    r"[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,10}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)",
  );

  static final _hexRegex = RegExp(r'^[0-9a-fA-F]+$');

  // supporting only d.d.d format
  static final _appVersionRegex = RegExp(r'^\d+\.\d+\.\d+$');

  static bool seedPhrase(String input) => _seedPhraseRegex.hasMatch(input);

  static bool digits(String input) => _digitsRegex.hasMatch(input);

  static bool url(
    String input, {
    bool protocolRequired = false,
  }) =>
      protocolRequired
          ? _urlWithProtocolRegex.hasMatch(input)
          : _urlWithoutProtocolRegex.hasMatch(input);

  static bool hex(String input) => _hexRegex.hasMatch(input);

  static bool appVersion(String input) => _appVersionRegex.hasMatch(input);
}
