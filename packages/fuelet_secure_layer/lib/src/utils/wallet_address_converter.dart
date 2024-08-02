import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/src/utils/hex_helper.dart';

import '../features/account/entity/address.dart';

typedef WalletAddressConvertor = Future<String> Function(String);

class FuelWalletAddressConverter {
  static Future<String> bech32StringFromB256String(String b256Address) async {
    try {
      final bech32Address = await FuelUtils.bech32FromB256String(b256Address);

      return bech32Address;
    } catch (e) {
      return b256Address;
    }
  }

  static Future<String> b256StringFromBech32String(String bech32Address) async {
    try {
      final b256Address = await FuelUtils.b256FromBech32String(bech32Address);

      return b256Address;
    } catch (e) {
      return bech32Address;
    }
  }

  static String fuelAddressFromString(String value) =>
      FuelAddress.fromString(_addressValue);

  static bool isBech32(String address) {
    return address.startsWith('fuel');
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
