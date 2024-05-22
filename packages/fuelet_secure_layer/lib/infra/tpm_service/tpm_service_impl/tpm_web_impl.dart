import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_exceptions/tpm_service_either.dart';

class TPMServiceWebImpl implements TPMService {
  @override
  bool isServiceAvailable() => false;

  @override
  Future<TPMEither<bool>> generateKeyPair(String tag) {
    // TODO: implement generateKeyPair
    throw UnimplementedError();
  }

  @override
  Future<TPMEither<String>> getPublicKey(String tag) {
    // TODO: implement getPublicKey
    throw UnimplementedError();
  }

  @override
  Future<TPMEither<String>> signMessage(
    List<int> message,
    String tag,
  ) {
    // TODO: implement signTransaction
    throw UnimplementedError();
  }

  @override
  Future<TPMEither<bool>> deleteKeys(List<String> tags) {
    // TODO: implement deleteAllKeys
    throw UnimplementedError();
  }

  @override
  Future<TPMEither<bool>> deleteKey(String tag) {
    // TODO: implement deleteKey
    throw UnimplementedError();
  }

  @override
  Future<TPMEither<bool>> verify(
    String signature,
    String message,
    String tag,
  ) {
    // TODO: implement verify
    throw UnimplementedError();
  }

  @override
  Future<TPMEither<bool>> isTagCreated(String tag) {
    // TODO: implement isTagCreated
    throw UnimplementedError();
  }
}
