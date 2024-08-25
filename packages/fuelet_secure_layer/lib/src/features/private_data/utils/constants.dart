import 'package:fuelet_secure_layer/src/features/account/entity/address.dart';

abstract class SecureLayerConstants {
  static const kAccountsBox = 'accounts_box';

  static AccountAddressType priorityAccountAddressType =
      AccountAddressType.bech32Address;
}
