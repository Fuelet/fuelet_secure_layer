import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/src/utils/hex_helper.dart';

import '../features/account/entity/address.dart';

typedef WalletAddressConvertor = Future<String> Function(String);

class FuelWalletAddressConverter {
  static Future<String> bech32StringFromB256String(String b256Address) async {
    final FuelAddress fuelAddress = FuelAddress.fromString(b256Address);
    return fuelAddress.bech32Address;
  }

  static Future<String> b256StringFromBech32String(String bech32Address) async {
    final FuelAddress fuelAddress = FuelAddress.fromString(bech32Address);
    return fuelAddress.b256Address;
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

  static Future<AccountAddress> accountAddressFromB256String(
      String b256Address) async {
    final withHexPrefix = addHexPrefix(b256Address);
    final bech32Address = await bech32StringFromB256String(withHexPrefix);
    return AccountAddress(
      b256Address: withHexPrefix,
      bech32Address: bech32Address,
    );
  }
}
