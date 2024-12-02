// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fuelet_secure_layer/src/features/account/entity/account.dart';

class DerivativeAccount {
  final String seedPhraseAlias;
  final Account rootAccount;
  final List<Account> derivativeAccounts;

  DerivativeAccount({
    required this.rootAccount,
    required this.seedPhraseAlias,
    required this.derivativeAccounts,
  });

  DerivativeAccount copyWith({
    String? seedPhraseAlias,
    Account? rootAccount,
    List<Account>? derivativeAccounts,
  }) {
    return DerivativeAccount(
      seedPhraseAlias: seedPhraseAlias ?? this.seedPhraseAlias,
      rootAccount: rootAccount ?? this.rootAccount,
      derivativeAccounts: derivativeAccounts ?? this.derivativeAccounts,
    );
  }
}
