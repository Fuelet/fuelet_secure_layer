import 'package:fuelet_secure_layer/src/features/network/entity/blockchain_network.dart';

abstract class BlockchainNetworkRepository {
  BlockchainNetwork? get currentNetwork;
}
