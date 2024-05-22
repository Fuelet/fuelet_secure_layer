import 'package:fuelet_secure_layer/core/account/entity/account.dart';
import 'package:fuelet_secure_layer/core/account/entity/adding_method.dart';
import 'package:fuelet_secure_layer/core/account/entity/wallet_group.dart';
import 'package:fuelet_secure_layer/core/wallet_import/entity/wallet_import_typedef.dart';

abstract class IWalletCreateRepository {
  Future<Account> createAccount();

  Future<WalletImportResponse> importAccountWithMnemonic(
    String mnemonic, {
    required AccountAddingMethod addingMethod,
  });

  Future<WalletsImportResponse> importDerivativeAccountsWithMnemonic(
    String mnemonic, {
    required int count,
    required int fromIndex,
  });

  Future<WalletImportResponse> importAccountWithPrivateKey(
    String privateKey, {
    required AccountAddingMethod addingMethod,
  });

  Future<WalletImportResponse> watchAccount({
    required String bech32Address,
    required String name,
    required WalletGroup walletGroup,
    required AccountAddingMethod addingMethod,
  });

  Future<Account> createHSAccount({
    required String bech32Address,
    required String name,
    required String tag,
    required String recoveryPrivateKey,
  });
}
