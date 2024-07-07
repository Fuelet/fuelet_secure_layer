import 'package:fuelet_secure_layer/core/account/entity/account.dart';
import 'package:fuelet_secure_layer/core/account/entity/adding_method.dart';
import 'package:fuelet_secure_layer/core/account/entity/wallet_group.dart';
import 'package:fuelet_secure_layer/core/graph_ql/repository/graph_ql_repository.dart';
import 'package:fuelet_secure_layer/core/network/entity/blockchain_network.dart';
import 'package:fuelet_secure_layer/core/wallet_create/entity/contract_id.dart';
import 'package:fuelet_secure_layer/core/wallet_import/entity/wallet_import_typedef.dart';

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

  Future<(Account, ContractId)> createHSAccount({
    required String name,
    required GraphQLRepository graphQLRepository,
    required String currentNetworkUrl,
    required BlockchainNetwork network,
  });
}
