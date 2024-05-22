import 'package:fuelet_secure_layer/core/account/entity/account.dart';

extension AccountX on Account {
  @Deprecated('Access to privateKey will be removed')
  bool get privateKeyExists => privateKey != null;

  @Deprecated('Access to privateKey will be removed')
  bool get seedPhraseExists => seedPhrase != null;

  bool get isOwner => privateKey != null || seedPhrase != null || isHsWallet;

  String get address => fuelAddress.bech32Address;

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
