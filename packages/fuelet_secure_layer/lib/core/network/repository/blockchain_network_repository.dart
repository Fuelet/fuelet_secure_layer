import 'package:fuelet_secure_layer/core/network/entity/blockchain_network.dart';

abstract class BlockchainNetworkRepository {
  BlockchainNetwork? get currentNetwork;
}
