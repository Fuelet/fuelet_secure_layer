import 'package:flutter_fuels/flutter_fuels.dart';

typedef WalletAddressConvertor = Future<String> Function(String);

class FuelWalletAddressConverter {
  Future<String> bech32StringFromB256String(String b256Address) async {
    final bech32Address = await FuelUtils.bech32FromB256String(b256Address);

    return bech32Address;
  }

  Future<String> b256StringFromBech32String(String bech32Address) async {
    final b256Address = await FuelUtils.b256FromBech32String(bech32Address);

    return b256Address;
  }

  bool isBech32(String address) {
    return address.startsWith('fuel');
  }
}
