import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_exceptions/tpm_service_either.dart';

abstract class TPMService {
  bool isServiceAvailable();

  Future<TPMEither<bool>> isTagCreated(String tag);

  Future<TPMEither<bool>> generateKeyPair(String tag);

  Future<TPMEither<String>> getPublicKey(String tag);

  Future<TPMEither<bool>> deleteKey(String tag);

  Future<TPMEither<bool>> deleteKeys(List<String> tags);

  Future<TPMEither<bool>> verify(
    String signature,
    String message,
    String tag,
  );

  Future<TPMEither<String>> signMessage(
    List<int> message,
    String tag,
  );
}
