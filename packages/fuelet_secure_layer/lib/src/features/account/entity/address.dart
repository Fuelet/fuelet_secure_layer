import 'package:equatable/equatable.dart';
import 'package:fuelet_secure_layer/src/features/private_data/utils/constants.dart';
import 'package:fuelet_secure_layer/src/model/hex_string.dart';
import 'package:hive/hive.dart';

part 'address.g.dart';

enum AccountAddressType { bech32Address, b256Address }

@HiveType(typeId: 1)
class AccountAddress with EquatableMixin {
  @HiveField(0)
  final String bech32Address;
  @HiveField(1)
  // For backward compatibility with Hive. Shouldn't be used directly. Use `b256Address` instead.
  final String stringB256Address;

  const AccountAddress({
    required this.stringB256Address,
    required this.bech32Address,
  });

  HexString get b256Address => HexString(stringB256Address);

  @override
  List<Object?> get props => [bech32Address.toLowerCase(), b256Address.value];

  String defaultPresentationAddress() =>
      switch (SecureLayerConstants.priorityAccountAddressType) {
        AccountAddressType.bech32Address => bech32Address,
        AccountAddressType.b256Address => b256Address.checksumValue,
      };

  String alternativePresentationAddress() =>
      switch (SecureLayerConstants.priorityAccountAddressType) {
        AccountAddressType.bech32Address => b256Address.checksumValue,
        AccountAddressType.b256Address => bech32Address,
      };
}
