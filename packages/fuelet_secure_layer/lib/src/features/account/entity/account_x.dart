part of 'account.dart';

extension AccountX on Account {
  bool get privateKeyExists => _privateKey != null;

  bool get seedPhraseExists => _seedPhrase != null;

  bool get isOwner => _privateKey != null || _seedPhrase != null || isHsWallet;

  String get address => fuelAddress.bech32Address;

  bool get isWatchlist => !isOwner;

  String get nameOrUnnamed => name ?? 'Unnamed';

  bool get isHsWallet => hardwareSignerTag != null;

  String get shortName {
    /// A -> A
    if (nameOrUnnamed.length <= 1) {
      return nameOrUnnamed;
    }

    /// First Account -> FA
    final List<String> accountNameParts =
        nameOrUnnamed.split(' ').where((s) => s.isNotEmpty).toList();
    if (accountNameParts.length > 1) {
      return '${accountNameParts[0][0]}${accountNameParts[1][0]}';
    }

    /// Account -> Ac
    return nameOrUnnamed.substring(0, 2);
  }
}
