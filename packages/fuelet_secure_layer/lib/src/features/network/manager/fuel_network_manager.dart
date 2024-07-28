import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

abstract class FuelNetworkManager extends FuelNetworkProviderRepository {
  Future<void> init();
  Future<void> setNetworkProvider(BlockchainNetwork network);
}
