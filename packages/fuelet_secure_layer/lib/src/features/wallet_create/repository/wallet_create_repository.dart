import 'package:fuelet_secure_layer/src/features/account/entity/adding_method.dart';
import 'package:fuelet_secure_layer/src/features/account/entity/wallet_group.dart';
import 'package:fuelet_secure_layer/src/features/wallet_import/entity/wallet_import_typedef.dart';

abstract class IWalletCreateRepository {
  Future<WalletImportResponse> createAccount(
      {required String currentNetworkUrl});

  Future<WalletImportResponse> importAccountWithMnemonic(
    String mnemonic, {
    required AccountAddingMethod addingMethod,
    required String currentNetworkUrl,
  });

  Future<WalletsImportResponse> importDerivativeAccountsWithMnemonic(
    String mnemonic, {
    required int count,
    required int fromIndex,
    required String currentNetworkUrl,
  });

  Future<WalletImportResponse> importAccountWithPrivateKey(
    String privateKey, {
    required AccountAddingMethod addingMethod,
    required String currentNetworkUrl,
  });

  Future<WalletImportResponse> watchAccount({
    required String bech32Address,
    required String name,
    required WalletGroup walletGroup,
    required AccountAddingMethod addingMethod,
  });
}
