import 'package:freezed_annotation/freezed_annotation.dart';

part 'tpm_service_exceptions.freezed.dart';

@freezed
class TPMException with _$TPMException {
  const factory TPMException.failure({String? message}) = _Failure;
}
