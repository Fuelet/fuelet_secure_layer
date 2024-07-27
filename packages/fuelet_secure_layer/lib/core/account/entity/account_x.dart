part of 'account.dart';

extension AccountX on Account {
  @Deprecated('Access to privateKey will be removed')
  bool get privateKeyExists => _privateKey != null;

  @Deprecated('Access to privateKey will be removed')
  bool get seedPhraseExists => seedPhrase != null;

  @Deprecated('Access to privateKey will be removed')
  bool get isOwner => _privateKey != null || seedPhrase != null || isHsWallet;

  String get address => fuelAddress.bech32Address;

  @Deprecated('Access to privateKey will be removed')
  bool get isWatchlist => !isOwner;

  String get nameOrUnnamed => name ?? 'Unnamed';

  bool get isHsWallet => hardwareSignerTag != null;

  String get shortName {
    /// A -> A
    if (nameOrUnnamed.length == 1) {
      return nameOrUnnamed;
    }

    /// First Account -> FA
    if (nameOrUnnamed.split(' ').length > 1) {
      final splitedItems =
          nameOrUnnamed.split(' ').where((s) => s.isNotEmpty).toList();
      return '${splitedItems[0][0]}${splitedItems[1][0]}';
    }

    /// Account -> Ac
    return nameOrUnnamed.substring(0, 2);
  }
}
