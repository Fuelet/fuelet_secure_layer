import 'package:dartz/dartz.dart';
import 'package:fuelet_secure_layer/core/account/entity/account.dart';
import 'package:fuelet_secure_layer/core/wallet_import/entity/wallet_import_failure.dart';

typedef WalletImportResponse = Either<WalletImportFailure, Account>;
typedef WalletsImportResponse = Either<WalletImportFailure, List<Account>>;
