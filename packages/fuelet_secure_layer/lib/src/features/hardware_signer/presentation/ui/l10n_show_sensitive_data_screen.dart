class L10nShowSensitiveDataScreen {
  final String exportPrivateKey;
  final String showSeedPhrase;
  final String tapToRevealYour;
  final String privateKey;
  final String secretPhrase;
  final String copy;
  final String doNotShareYour;

  L10nShowSensitiveDataScreen({
    required this.exportPrivateKey,
    required this.showSeedPhrase,
    required this.tapToRevealYour,
    required this.privateKey,
    required this.secretPhrase,
    required this.copy,
    required this.doNotShareYour,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is L10nShowSensitiveDataScreen &&
          runtimeType == other.runtimeType &&
          exportPrivateKey == other.exportPrivateKey &&
          showSeedPhrase == other.showSeedPhrase &&
          tapToRevealYour == other.tapToRevealYour &&
          privateKey == other.privateKey &&
          secretPhrase == other.secretPhrase &&
          copy == other.copy &&
          doNotShareYour == other.doNotShareYour;

  @override
  int get hashCode =>
      exportPrivateKey.hashCode ^
      showSeedPhrase.hashCode ^
      tapToRevealYour.hashCode ^
      privateKey.hashCode ^
      secretPhrase.hashCode ^
      copy.hashCode ^
      doNotShareYour.hashCode;
}
