import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_import_failure.freezed.dart';

@freezed
class WalletImportFailure with _$WalletImportFailure {
  const factory WalletImportFailure.validationFailed() = _ValidationFailed;
  const factory WalletImportFailure.privateKeyValidationFailed() =
      _PrivateKeyValidationFailed;
  const factory WalletImportFailure.invalidPrivateKey() = _InvalidPrivateKey;
  const factory WalletImportFailure.invalidSeedPhrase() = _InvalidSeedPhrase;
  const factory WalletImportFailure.invalidMnemonic() = _InvalidMnemonic;
  const factory WalletImportFailure.invalidAddress() = _InvalidAddress;
  const factory WalletImportFailure.accountAlreadyAdded() =
      _AccountAlreadyAdded;
  const factory WalletImportFailure.unexpected() = _Unexpected;
}
