import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

abstract class BlockchainNetworkUtils {
  static const mainnetNetwork = BlockchainNetwork(
    host: 'https://mainnet.fuel.network',
    indexerUrl: 'https://node-beta-2.fuel.network/graphql',
    faucetUrl: null,
    networkName: 'mainnet',
    isCustom: false,
    id: 'mainnet',
  );

  static const testnetNetwork = BlockchainNetwork(
    host: 'https://testnet.fuel.network',
    indexerUrl: 'https://testnet.fuel.network/v1/graphql',
    faucetUrl: 'https://faucet-testnet.fuel.network',
    networkName: 'testnet',
    isCustom: false,
    id: 'testnet',
  );

  static const builtInNetworks = [mainnetNetwork, testnetNetwork];

  static const defaultNetwork = testnetNetwork;

  static const networksWithFaucet = [testnetNetwork];
}
