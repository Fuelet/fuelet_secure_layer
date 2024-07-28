import 'package:equatable/equatable.dart';

class AccountPrivateData with EquatableMixin {
  final String privateKey;
  final String? seedPhrase;

  AccountPrivateData({
    required this.privateKey,
    required this.seedPhrase,
  });

  @override
  List<Object?> get props => [privateKey, seedPhrase];
}
