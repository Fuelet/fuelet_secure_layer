import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

class BlockchainNetworkIds {
  static const String testnet = "testnet";
  static const String mainnet = "mainnet";
}

abstract class BlockchainNetworkUtils {
  static const mainnetNetwork = BlockchainNetwork(
    host: 'https://mainnet.fuel.network',
    indexerUrl: 'https://mainnet.fuel.network/v1/graphql',
    faucetUrl: null,
    networkName: 'mainnet',
    isCustom: false,
    id: BlockchainNetworkIds.mainnet,
  );

  static const testnetNetwork = BlockchainNetwork(
    host: 'https://testnet.fuel.network',
    indexerUrl: 'https://testnet.fuel.network/v1/graphql',
    faucetUrl: 'https://faucet-testnet.fuel.network',
    networkName: 'testnet',
    isCustom: false,
    id: BlockchainNetworkIds.testnet,
  );

  static const builtInNetworks = [mainnetNetwork, testnetNetwork];

  static const defaultNetwork = mainnetNetwork;

  static const networksWithFaucet = [testnetNetwork];
}
