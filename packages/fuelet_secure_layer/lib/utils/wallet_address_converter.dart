import 'package:flutter_fuels/fuel_utils/fuel_utils.dart';
import 'package:fuelet_secure_layer/core/account/entity/address.dart';
import 'package:fuelet_secure_layer/utils/hex_helper.dart';

typedef WalletAddressConvertor = Future<String> Function(String);

class FuelWalletAddressConverter {
  static Future<String> bech32StringFromB256String(String b256Address) async {
    final bech32Address = await FuelUtils.bech32FromB256String(b256Address);

    return bech32Address;
  }

  static Future<String> b256StringFromBech32String(String bech32Address) async {
    final b256Address = await FuelUtils.b256FromBech32String(bech32Address);

    return b256Address;
  }

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
