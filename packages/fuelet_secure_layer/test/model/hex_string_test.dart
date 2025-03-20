import 'package:flutter_test/flutter_test.dart';
import 'package:fuelet_secure_layer/src/model/hex_string.dart';

void main() {
  group('HexString', () {
    test(
      'Should compare hex strings in different formats',
      () {
        final sameHexStrings = {
          HexString(
              "0xf8f8b6283d7fa5b672b530cbb84fcccb4ff8dc40f8176ef4544ddb1f1952ad07"),
          HexString(
              "f8f8b6283d7fa5b672b530cbb84fcccb4ff8dc40f8176ef4544ddb1f1952ad07"),
          HexString(
              "0XF8F8B6283D7FA5B672B530CBB84FCCCB4FF8DC40F8176EF4544DDB1F1952AD07"),
          HexString(
              "F8F8B6283D7FA5B672B530CBB84FCCCB4FF8DC40F8176EF4544DDB1F1952AD07"),
          HexString(
              "0xf8f8b6283d7fa5b672b530CBB84FCCCB4FF8DC40F8176EF4544ddb1f1952ad07"),
          HexString(
              "f8f8b6283d7fa5b672b530CBB84FCCCB4FF8DC40F8176EF4544ddb1f1952ad07"),
          HexString(
              "0XF8F8B6283D7FA5B672B530cbb84fcccb4ff8dc40f8176ef4544DDB1F1952AD07"),
          HexString(
              "F8F8B6283D7FA5B672B530cbb84fcccb4ff8dc40f8176ef4544DDB1F1952AD07"),
        };

        expect(sameHexStrings.length, 1);
        expect(sameHexStrings.first.value,
            "0xf8f8b6283d7fa5b672b530cbb84fcccb4ff8dc40f8176ef4544ddb1f1952ad07");
      },
    );

    test(
      'Should format hex string as checksum string',
      () {
        final hexString = HexString(
            "0xfe1177573a47310756f27ef25c7229b5da8d5109a7258b297f23a6768c78cb40");
        expect(hexString.value,
            "0xfe1177573a47310756f27ef25c7229b5da8d5109a7258b297f23a6768c78cb40");
        expect(hexString.checksumValue,
            "0xfE1177573a47310756f27eF25c7229B5DA8d5109a7258b297F23a6768C78cB40");
      },
    );
  });
}
