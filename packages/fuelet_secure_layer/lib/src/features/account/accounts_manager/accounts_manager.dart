import 'package:fuelet_secure_layer/src/features/account/entity/derivative_account.dart';

abstract class AccountsManager {
  Future<List<DerivativeAccount>> getDerivativeAccounts();
}
