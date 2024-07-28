class KeyPair {
  final String? bech32;
  final String? privateKey;

  const KeyPair({
    required this.bech32,
    required this.privateKey,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KeyPair &&
          runtimeType == other.runtimeType &&
          bech32 == other.bech32 &&
          privateKey == other.privateKey);

  @override
  int get hashCode => bech32.hashCode ^ privateKey.hashCode;

  @override
  String toString() {
    return 'KeyPair{ bech32: $bech32, privateKey: $privateKey,}';
  }
}
