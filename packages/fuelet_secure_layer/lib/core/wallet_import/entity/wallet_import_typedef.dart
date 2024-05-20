import 'package:dartz/dartz.dart';
import 'package:fuelet_secure_layer/core/wallet_import/entity/wallet_import_failure.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

typedef WalletImportResponse = Either<WalletImportFailure, Account>;
typedef WalletsImportResponse = Either<WalletImportFailure, List<Account>>;
