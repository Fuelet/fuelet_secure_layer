import 'package:hive/hive.dart';

part 'wallet_group.g.dart';

@HiveType(typeId: 5)
enum WalletGroup {
  @HiveField(0)
  watchlist,
  @HiveField(1)
  myWallets,
}
