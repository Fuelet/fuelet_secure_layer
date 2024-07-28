// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class __Env {
  static const List<int> _enviedkeyaesPassword = [
    3029292496,
    18982089,
    1391550903,
    3906866437
  ];
  static const List<int> _envieddataaesPassword = [
    3029292452,
    18982060,
    1391550916,
    3906866545
  ];
  static final String aesPassword = String.fromCharCodes(
    List.generate(_envieddataaesPassword.length, (i) => i, growable: false)
        .map((i) => _envieddataaesPassword[i] ^ _enviedkeyaesPassword[i])
        .toList(growable: false),
  );
}
