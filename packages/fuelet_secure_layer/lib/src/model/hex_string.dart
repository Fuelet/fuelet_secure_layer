import 'package:eip55/eip55.dart';
import 'package:equatable/equatable.dart';
import 'package:fuelet_secure_layer/src/utils/hex_helper.dart';

String _normalizeHex(String hex) {
  return addHexPrefix(hex.toLowerCase());
}

class HexString extends Equatable {
  final String _value;

  HexString(String hex) : _value = _normalizeHex(hex);

  String get value => _value;

  // Same hex string with some letters in uppercase for human readable checks
  String get checksumValue => addHexPrefix(toChecksumAddress(_value));

  @override
  String toString() {
    return value;
  }

  @override
  List<Object> get props => [_value];
}
