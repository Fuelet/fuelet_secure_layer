import 'package:hive/hive.dart';

part 'adding_method.g.dart';

@HiveType(typeId: 7)
enum AccountAddingMethod {
  @HiveField(0)
  create,
  @HiveField(1)
  importWithSeedPhrase,
  @HiveField(2)
  importWithPrivateKey,
  @HiveField(3)
  importWithTrackWallet,
  @HiveField(4)
  importMultipleWallets,
  @HiveField(5)
  notDetected,
  @HiveField(6)
  createdAsHS,
}
