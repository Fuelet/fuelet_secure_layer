part of 'account.dart';

const _defaultShortName = 'Ac';

extension AccountX on Account {
  bool get privateKeyExists => _privateKey != null;

  bool get seedPhraseExists => _seedPhrase != null;

  bool get isOwner => _privateKey != null || _seedPhrase != null || isHsWallet;

  String get address => fuelAddress.bech32Address;

  bool get isWatchlist => !isOwner;

  String get nameOrUnnamed => name ?? 'Unnamed';

  bool get isHsWallet => hardwareSignerTag != null;

  String get shortName {
    if (nameOrUnnamed.isEmpty) {
      return _defaultShortName;
    }

    /// A -> A
    if (nameOrUnnamed.length <= 1) {
      return nameOrUnnamed;
    }

    final List<String> accountNameParts =
        nameOrUnnamed.split(' ').where((s) => s.isNotEmpty).toList();
    if (accountNameParts.isEmpty) {
      return _defaultShortName;
    }
    if (accountNameParts.length > 1) {
      /// First Account -> FA
      return '${accountNameParts[0][0]}${accountNameParts[1][0]}';
    }

    /// Account -> Ac
    return accountNameParts.first.substring(0, 2);
  }
}
