class L10nSaveSensitiveDataScreen {
  final String exportPrivateKey;
  final String showSeedPhrase;
  final String tapToRevealYour;
  final String privateKey;
  final String secretPhrase;
  final String copy;
  final String cloudBackup;
  final String backupNow;
  final String recoveryPhraseAgreement;
  final String continue_;

  L10nSaveSensitiveDataScreen({
    required this.exportPrivateKey,
    required this.showSeedPhrase,
    required this.tapToRevealYour,
    required this.privateKey,
    required this.secretPhrase,
    required this.copy,
    required this.cloudBackup,
    required this.backupNow,
    required this.recoveryPhraseAgreement,
    required this.continue_,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is L10nSaveSensitiveDataScreen &&
          runtimeType == other.runtimeType &&
          exportPrivateKey == other.exportPrivateKey &&
          showSeedPhrase == other.showSeedPhrase &&
          tapToRevealYour == other.tapToRevealYour &&
          privateKey == other.privateKey &&
          secretPhrase == other.secretPhrase &&
          copy == other.copy &&
          cloudBackup == other.cloudBackup &&
          backupNow == other.backupNow &&
          recoveryPhraseAgreement == other.recoveryPhraseAgreement &&
          continue_ == other.continue_;

  @override
  int get hashCode =>
      exportPrivateKey.hashCode ^
      showSeedPhrase.hashCode ^
      tapToRevealYour.hashCode ^
      privateKey.hashCode ^
      secretPhrase.hashCode ^
      copy.hashCode ^
      cloudBackup.hashCode ^
      backupNow.hashCode ^
      recoveryPhraseAgreement.hashCode ^
      continue_.hashCode;
}
