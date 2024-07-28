import 'dart:async';

import 'package:fuelet_secure_layer/core/network/entity/blockchain_network.dart';
import 'package:fuelet_secure_layer/core/network/fuel_network_manager.dart';
import 'package:fuelet_secure_layer/infra/network/blockchain_network_utils.dart';
import 'package:fuelet_secure_layer/infra/network/network_manager.dart';

class FuelNetworkManagerImpl implements FuelNetworkManager {
  @override
  late String currentNetwork;

  final NetworkManager _blockchainNetworkManager;

  FuelNetworkManagerImpl(this._blockchainNetworkManager);

  @override
  Future<void> init() async {
    final currentNetwork = _blockchainNetworkManager.currentNetwork;
    if (currentNetwork != null) {
      await setNetworkProvider(currentNetwork);
    } else {
      // TODO: change later!!
      await setNetworkProvider(BlockchainNetworkUtils.defaultNetwork);
    }

    _blockchainNetworkManager.networkStream.listen(
      (network) => setNetworkProvider(network),
    );
  }

  @override
  Future<void> setNetworkProvider(BlockchainNetwork network) async {
    currentNetwork = network.host;
  }
}
