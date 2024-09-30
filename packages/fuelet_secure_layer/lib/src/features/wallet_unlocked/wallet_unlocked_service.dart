import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';

class WalletUnlockedService {
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;

  const WalletUnlockedService(
    this._accountsPrivateDataRepository,
  );

  Future<FuelWallet?> getSelectedWalletUnlocked(
    String checkAddress, {
    required String? selectedAccount,
    required String currentNetwork,
  }) async {
    final privateData = await _accountsPrivateDataRepository
        .getAccountPrivateData(checkAddress);
    final privateKey = privateData?.privateKey;

    if (privateKey == null || selectedAccount != checkAddress) {
      return null;
    }

    final wallet = await FuelWallet.newFromPrivateKey(
      networkUrl: currentNetwork,
      privateKey: privateKey,
    );

    return wallet;
  }
}
