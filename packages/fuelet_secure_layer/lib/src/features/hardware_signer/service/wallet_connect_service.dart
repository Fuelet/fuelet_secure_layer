import 'package:flutter_fuelet_smart_contract_wallet/wallet/smart_contract_wallet.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_local_repository.dart';
import 'package:fuelet_secure_layer/src/features/account/repository/accounts_private_data_repository.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/repository/hardware_signer_repository.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/repository/hardware_signer_utils.dart';
import 'package:fuelet_secure_layer/src/utils/either_x.dart';

class WalletConnectService {
  final IAccountsLocalRepository _accountsRepository;
  final IAccountsPrivateDataRepository _accountsPrivateDataRepository;
  final HardwareSignerRepository _hardwareSignerRepository;

  WalletConnectService(
    this._accountsRepository,
    this._accountsPrivateDataRepository,
    this._hardwareSignerRepository,
  );

  Future<SmartContractWallet?> getConnectedWallet(String currentNetwork) async {
    final bech32 = _accountsRepository.selectedAccount;
    if (bech32 == null) {
      return null;
    }
    final privateData =
        await _accountsPrivateDataRepository.getAccountPrivateData(bech32);
    final privateKey = privateData?.privateKey;
    final r1PublicKey =
        (await _hardwareSignerRepository.getPublicKey(bech32)).asRight();
    if (r1PublicKey == null || privateKey == null) {
      return null;
    }
    final convertedPublicKey =
        HardwareSignerUtils.convertPublicKey(r1PublicKey);
    return await SmartContractWallet.connect(
      networkUrl: currentNetwork,
      r1PublicKey: convertedPublicKey,
      recoveryWalletPrivateKey: privateKey,
    );
  }
}
