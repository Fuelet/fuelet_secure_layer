import 'package:fuelet_secure_layer/src/features/account/entity/address.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'derivative_info.g.dart';

@HiveType(typeId: 11)
class DerivativeInfo {
  @HiveField(0)
  final int index;
  @HiveField(1)
  final AccountAddress derivedFrom;

  DerivativeInfo({
    required this.index,
    required this.derivedFrom,
  });
}
