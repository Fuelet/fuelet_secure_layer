import 'package:dartz/dartz.dart';

extension EitherX<L, R> on Either<L, R> {
  R? asRight() => fold((_) => null, (r) => r);

  L? asLeft() => fold((l) => l, (_) => null);
}
