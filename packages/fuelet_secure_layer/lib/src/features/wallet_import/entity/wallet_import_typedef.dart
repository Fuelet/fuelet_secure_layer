import 'package:dartz/dartz.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';
import 'package:fuelet_secure_layer/src/features/wallet_import/entity/wallet_import_failure.dart';

typedef WalletImportResponse = Either<WalletImportFailure, Account>;
typedef WalletsImportResponse = Either<WalletImportFailure, List<Account>>;
