import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

typedef WalletAddressConvertor = Future<String> Function(String);

class FuelWalletAddressConverter {
  static String bech32StringFromB256String(String b256Address) {
    return FuelAddress
        .fromString(b256Address)
        .bech32Address;
  }

  static HexString b256StringFromBech32String(String bech32Address) {
    return HexString(FuelAddress
        .fromString(bech32Address)
        .b256Address);
  }

  static FuelAddress fuelAddressFromString(String value) =>
      FuelAddress.fromString(value);

  static bool isBech32(String address) {
    try {
      final FuelAddress fuelAddress = FuelAddress.fromString(address);
      return fuelAddress.bech32Address == address;
    } catch (ex) {
      return false;
    }
  }

  static AccountAddress accountAddressFromString(String address) {
    final fuelAddress = FuelAddress.fromString(address);
    return AccountAddress(
      stringB256Address: fuelAddress.b256Address,
      bech32Address: fuelAddress.bech32Address,
    );
  }
}
