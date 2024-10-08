import 'package:dartz/dartz.dart';
import 'package:fuelet_secure_layer/src/features/tpm_service/tpm_service_exceptions/tpm_service_exceptions.dart';

typedef TPMEither<T> = Either<TPMException, T>;
