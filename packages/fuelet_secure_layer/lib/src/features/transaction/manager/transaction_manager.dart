import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/src/features/network/manager/fuel_network_manager.dart';
import 'package:fuelet_secure_layer/src/features/wallet_unlocked/wallet_unlocked_service.dart';

class TransactionManager {
  final FuelNetworkManager _fuelNetworkManager;
  final WalletUnlockedService _walletUnlockedService;
  final IAccountsLocalRepository _accountsRepository;

  TransactionManager(
    this._fuelNetworkManager,
    this._walletUnlockedService,
    this._accountsRepository,
  );

  Future<CallResult> simulateTransaction({
    required String address,
    required String transactionRequestHexOrJson,
  }) async {
    final walletUnlocked = await _getWalletUnlocked(address);

    final callResult = await walletUnlocked!.simulateTransaction(
        transactionRequestHexOrJson: transactionRequestHexOrJson);
    validateTransactionReceipts(callResult);

    return callResult;
  }

  Future<String> sendTransaction({
    required String address,
    required String transactionRequestHexOrJson,
  }) async {
    final walletUnlocked = await _getWalletUnlocked(address);

    return walletUnlocked!.sendTransaction(
        transactionRequestHexOrJson: transactionRequestHexOrJson);
  }

  Future<String> signMessage({
    required String address,
    required String message,
  }) async {
    final walletUnlocked = await _getWalletUnlocked(address);

    return walletUnlocked!.signMessage(message: message);
  }

  Future<(String, String)?> createTransferTransactionRequest({
    required String address,
    required String destinationB256Address,
    required int fractionalAmount,
    required String assetId,
  }) async {
    final walletUnlocked = await _getWalletUnlocked(address);

    return walletUnlocked?.createTransferTransactionRequest(
      destinationB256Address: destinationB256Address,
      fractionalAmount: fractionalAmount,
      assetId: assetId,
    );
  }

  Future<FuelWallet?> _getWalletUnlocked(String address) async {
    final walletUnlocked =
        await _walletUnlockedService.getSelectedWalletUnlocked(
      address,
      currentNetwork: _fuelNetworkManager.currentNetwork,
      selectedAccount: _accountsRepository.selectedAccount,
    );

    return walletUnlocked;
  }
}
