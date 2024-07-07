import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/core/account/repository/accounts_private_data_repository.dart';

class WalletUnlockedService {
  final IAccountsLocalRepository _accountsRepository;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;

  const WalletUnlockedService(
    this._accountsRepository,
    this._accountsPrivateDataRepository,
  );

  Future<FuelWallet?> getSelectedWalletUnlocked(
    String checkAddress, {
    required String currentNetwork,
  }) async {
    final privateKey =
        _accountsPrivateDataRepository.data[checkAddress]?.privateKey;

    if (privateKey == null ||
        _accountsRepository.selectedAccount != checkAddress) {
      return null;
    }

    final wallet = await FuelWallet.newFromPrivateKey(
      networkUrl: currentNetwork, //fuelNetworkManager.currentNetwork,
      privateKey: privateKey,
    );

    return wallet;
  }
}
