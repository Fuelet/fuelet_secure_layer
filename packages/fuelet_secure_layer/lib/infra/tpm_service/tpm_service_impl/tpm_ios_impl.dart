import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_exceptions/tpm_service_either.dart';
import 'package:fuelet_secure_layer/infra/tpm_service/tpm_service_exceptions/tpm_service_exceptions.dart';
import 'package:secure_enclave/secure_enclave.dart';

// @injectable
class TPMServiceIosImpl implements TPMService {
  final SecureEnclave _secureEnclave;

  TPMServiceIosImpl(this._secureEnclave);

  @override
  bool isServiceAvailable() => true;

  @override
  Future<TPMEither<bool>> generateKeyPair(String tag) async {
    try {
      final resultModel = await _secureEnclave.generateKeyPair(
        accessControl: AccessControlModel(
          tag: tag,
          options: [
            AccessControlOption.privateKeyUsage,
            AccessControlOption.biometryCurrentSet,
          ],
        ),
      );
      if (resultModel.error != null) {
        return Left(
          TPMException.failure(
            message: resultModel.error?.desc,
          ),
        );
      }
      if (!resultModel.value) {
        return const Left(
          TPMException.failure(
            message: 'Failed to generate key pair',
          ),
        );
      }
      return Right(resultModel.value);
    } on Exception catch (e) {
      return Left(TPMException.failure(message: e.toString()));
    }
  }

  @override
  Future<TPMEither<String>> getPublicKey(String tag) async {
    try {
      final resultModel = await _secureEnclave.getPublicKey(
        tag: tag,
      );
      final value = resultModel.value;
      if (resultModel.error != null) {
        return Left(
          TPMException.failure(
            message: resultModel.error?.desc,
          ),
        );
      }
      if (value == null) {
        return const Left(
          TPMException.failure(
            message: 'Failed to get public key',
          ),
        );
      }
      return Right(value);
    } on Exception catch (e) {
      return Left(TPMException.failure(message: e.toString()));
    }
  }

  @override
  Future<TPMEither<String>> signMessage(
    List<int> message,
    String tag,
  ) async {
    try {
      final resultModel = await _secureEnclave.sign(
        message: Uint8List.fromList(message),
        tag: tag,
      );
      if (resultModel.error != null) {
        return Left(
          TPMException.failure(
            message: resultModel.error?.desc,
          ),
        );
      }
      final value = resultModel.value;
      if (value == null) {
        return Left(
          TPMException.failure(
            message: resultModel.error?.desc,
          ),
        );
      }
      return Right(value);
    } on Exception catch (e) {
      return Left(TPMException.failure(message: e.toString()));
    }
  }

  @override
  Future<TPMEither<bool>> deleteKeys(List<String> tags) async {
    bool hasError = false;
    try {
      for (var tag in tags) {
        final resultModel = await _secureEnclave.removeKey(tag);
        if (resultModel.error == null) {
          hasError = true;
        }
      }
      if (hasError) {
        return const Left(
          TPMException.failure(
            message: 'Failed to delete all keys',
          ),
        );
      }
      return const Right(true);
    } on Exception catch (e) {
      return Left(TPMException.failure(message: e.toString()));
    }
  }

  @override
  Future<TPMEither<bool>> deleteKey(String tag) async {
    final resultModel = await _secureEnclave.removeKey(tag);
    if (resultModel.error != null) {
      return Left(TPMException.failure(
        message: resultModel.error?.desc,
      ));
    }
    if (!resultModel.value) {
      return const Left(
        TPMException.failure(
          message: 'Failed to delete key',
        ),
      );
    }
    return Right(resultModel.value);
  }

  @override
  Future<TPMEither<bool>> verify(
    String signature,
    String message,
    String tag,
  ) async {
    try {
      final resultModel = await _secureEnclave.verify(
        plainText: message,
        signature: signature,
        tag: tag,
      );
      final value = resultModel.value;
      if (resultModel.error != null) {
        return Left(
          TPMException.failure(
            message: resultModel.error?.desc,
          ),
        );
      }
      if (value == null) {
        return const Left(
          TPMException.failure(
            message: 'Failed to verify',
          ),
        );
      }
      return Right(value);
    } on Exception catch (e) {
      return Left(TPMException.failure(message: e.toString()));
    }
  }

  @override
  Future<TPMEither<bool>> isTagCreated(String tag) async {
    try {
      final resultModel = await _secureEnclave.isKeyCreated(tag: tag);
      if (resultModel.error != null) {
        return Left(
          TPMException.failure(
            message: resultModel.error?.desc,
          ),
        );
      }
      final value = resultModel.value;
      if (value == null) {
        return const Left(
          TPMException.failure(
            message: 'Failed to check tag',
          ),
        );
      }
      return Right(value);
    } on Exception catch (e) {
      return Left(TPMException.failure(message: e.toString()));
    }
  }
}
