import 'package:equatable/equatable.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/adding_method.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/address.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/derivative_info.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/wallet_group.dart';
import 'package:hive/hive.dart';

part 'account.g.dart';
part 'account_x.dart';

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

  // // TODO must be private
  // // We don't store privateKey in hive, but separately in secure storage
  // @Deprecated('Access to privateKey will be removed')
  late final String? _privateKey;
  // String? get privateKey => _privateKey; // TODO rm
  set privateKey(String? value) => _privateKey = value;
  //
  // // We don't store seedPhrase in hive, but separately in secure storage
  // @Deprecated('Access to seedPhrase will be removed')
  late final String? _seedPhrase;
  // String? get seedPhrase => _seedPhrase; // TODO rm
  set seedPhrase(String? value) => _seedPhrase = value;

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
    account.privateKey = _privateKey;
    account.seedPhrase = _seedPhrase;

    return account;
  }
}
