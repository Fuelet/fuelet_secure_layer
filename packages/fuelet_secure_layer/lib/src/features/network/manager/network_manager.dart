import 'dart:async';

import 'package:fuelet_secure_layer/src/features/network/entity/blockchain_network.dart';
import 'package:fuelet_secure_layer/src/features/network/entity/blockchain_network_dto.dart';
import 'package:fuelet_secure_layer/src/features/network/repository/blockchain_network_repository.dart';
import 'package:fuelet_secure_layer/src/features/network/utils/blockchain_network_utils.dart';
import 'package:fuelet_secure_layer/src/features/shared_prefs/secure_layer_shared_prefs_manager.dart';

class NetworkManager implements BlockchainNetworkRepository {
  final SecureLayerSharedPrefsManager _sharedPrefsManager;

  NetworkManager(this._sharedPrefsManager);

  @override
  BlockchainNetwork? get currentNetwork {
    final network = _sharedPrefsManager.selectedNetwork.get();

    if (network != null) {
      return network.toEntity();
    }

    return null;
  }

  BlockchainNetwork get currentNetworkOrDefault =>
      currentNetwork ?? BlockchainNetworkUtils.defaultNetwork;

  final _selectedNetworkStreamController =
      StreamController<BlockchainNetwork>();

  Stream<BlockchainNetwork> get networkStream =>
      _selectedNetworkStreamController.stream;

  Future<void> setNetwork(BlockchainNetwork network) async {
    final networkDto = BlockchainNetworkDto.fromEntity(network);

    await _sharedPrefsManager.selectedNetwork.set(networkDto);
    _selectedNetworkStreamController.add(network);
  }

  Future<void> resetSelectedNetwork() async {
    _sharedPrefsManager.selectedNetwork.set(null);
  }
}
