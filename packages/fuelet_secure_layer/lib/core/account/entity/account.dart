import 'package:equatable/equatable.dart';
import 'package:fuelet_secure_layer/core/account/entity/account_x.dart';
import 'package:fuelet_secure_layer/core/account/entity/adding_method.dart';
import 'package:fuelet_secure_layer/core/account/entity/address.dart';
import 'package:fuelet_secure_layer/core/account/entity/derivative_info.dart';
import 'package:fuelet_secure_layer/core/account/entity/wallet_group.dart';
import 'package:hive/hive.dart';

part 'account.g.dart';

@HiveType(typeId: 0)
class Account with EquatableMixin {
  @HiveField(0)
  final AccountAddress fuelAddress;

  @HiveField(1)
  final String? name;

  /// As hive orders the box items only with keys, we store [createdAt] [DateTime] value to sort them by ourselves
  @HiveField(2)
  final DateTime createdAt;

  @HiveField(3, defaultValue: WalletGroup.myWallets)
  final WalletGroup walletGroup;

  @HiveField(4, defaultValue: AccountAddingMethod.notDetected)
  final AccountAddingMethod addingMethod;

  @HiveField(5)
  final DerivativeInfo? derivativeInfo;

  @HiveField(6)
  String? hardwareSignerTag;

  // TODO must be private
  // We don't store privateKey in hive, but separately in secure storage
  late final String? privateKey;

  // We don't store seedPhrase in hive, but separately in secure storage
  late final String? seedPhrase;

  Account({
    required this.fuelAddress,
    required this.createdAt,
    this.hardwareSignerTag,
    this.walletGroup = WalletGroup.myWallets,
    this.addingMethod = AccountAddingMethod.notDetected,
    this.derivativeInfo,
    this.name,
  });

  @override
  List<Object?> get props => [address, name, addingMethod];

  Account copyWith({
    String? name,
    WalletGroup? walletGroup,
    DerivativeInfo? derivativeInfo,
    DateTime? createdAt,
  }) {
    final account = Account(
      hardwareSignerTag: hardwareSignerTag,
      addingMethod: addingMethod,
      fuelAddress: fuelAddress,
      walletGroup: walletGroup ?? this.walletGroup,
      createdAt: createdAt ?? this.createdAt,
      derivativeInfo: derivativeInfo ?? this.derivativeInfo,
      name: name ?? this.name,
    );

    /// [privateKey] and [seedPhrase] never will be changed!
    account.privateKey = privateKey;
    account.seedPhrase = seedPhrase;

    return account;
  }
}
