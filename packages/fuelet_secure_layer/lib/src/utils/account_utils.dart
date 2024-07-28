import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

abstract class AccountUtils {
  static String generateName(List<Account> accounts) {
    int num = 1;

    while (
        accounts.fold<bool>(false, (v, e) => v || e.name == 'Account $num')) {
      num++;
    }

    return 'Account $num';
  }
}
