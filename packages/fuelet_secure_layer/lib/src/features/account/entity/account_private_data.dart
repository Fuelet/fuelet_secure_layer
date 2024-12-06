class AccountPrivateData {
  final String privateKey;
  final String? seedPhrase;

  AccountPrivateData({
    required this.privateKey,
    required this.seedPhrase,
  });

  @override
  bool operator ==(Object other) {
    if (other is! AccountPrivateData ||
        other.privateKey.length != privateKey.length ||
        other.seedPhrase?.length != seedPhrase?.length) return false;
    var k = 0;
    for (int i = 0; i < privateKey.codeUnits.length; i++) {
      k |= other.privateKey.codeUnitAt(i) ^ privateKey.codeUnitAt(i);
    }
    if (seedPhrase != null && other.seedPhrase != null) {
      for (int i = 0; i < seedPhrase!.codeUnits.length; i++) {
        k |= other.seedPhrase!.codeUnitAt(i) ^ seedPhrase!.codeUnitAt(i);
      }
    }
    return k == 0;
  }

  @override
  int get hashCode => Object.hashAll([privateKey, seedPhrase]);
}
