import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:dartz/dartz.dart';
import 'package:fuelet_secure_layer/infra/hardware_signer/repository/hardware_signer_exception.dart';

const hardwareSignerTag = 'fuelet';
const hardwareSignersLimitIos = 3;

typedef HardwareSignerEither<T> = Either<HardwareSignerException, T>;

class CreatedHardwareSignerInfo {
  final String tag;
  final String bech32;
  final String contractId;

  const CreatedHardwareSignerInfo(
    this.tag,
    this.bech32,
    this.contractId,
  );
}

abstract class HardwareSignerUtils {
  static String getTag(int index) => '${hardwareSignerTag}_$index';

  static String convertPublicKey(String publicKey) =>
      (hex.encode(base64.decode(publicKey))).replaceFirst('04', '');
}
