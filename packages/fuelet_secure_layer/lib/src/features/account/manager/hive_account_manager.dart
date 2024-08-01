import 'package:hive/hive.dart';

class HiveAccountManager {
  static const _kHiddenBannersBox = 'hidden_banners_box';

  static String _accountBoxName(String bech32, String boxName) =>
      '${bech32}_$boxName';

  static Future<Box<bool>?> openAccountBox(String? bech32) {
    if (bech32 != null) {
      return Hive.openBox<bool>(_accountBoxName(bech32, _kHiddenBannersBox));
    } else {
      return Future.value(null);
    }
  }

  static Box<bool> getAccountBox(String bech32) =>
      Hive.box<bool>(_accountBoxName(bech32, _kHiddenBannersBox));
}
