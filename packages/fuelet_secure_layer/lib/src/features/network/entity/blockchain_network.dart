import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'blockchain_network.g.dart';

@HiveType(typeId: 9)
class BlockchainNetwork with EquatableMixin {
  @HiveField(0)
  final String host;
  @HiveField(1)
  final String indexerUrl;
  @HiveField(2)
  final String? faucetUrl;
  @HiveField(3)
  final String networkName;
  @HiveField(4)
  final bool isCustom;
  @HiveField(5)
  final String id;

  const BlockchainNetwork({
    required this.host,
    required this.indexerUrl,
    required this.faucetUrl,
    required this.networkName,
    required this.isCustom,
    required this.id,
  });

  @override
  List<Object?> get props => [
        host,
        indexerUrl,
        faucetUrl,
        networkName,
        isCustom,
        id,
      ];

  BlockchainNetwork copyWith({
    String? host,
    String? indexerUrl,
    String? faucetUrl,
    String? networkName,
  }) {
    return BlockchainNetwork(
      host: host ?? this.host,
      indexerUrl: indexerUrl ?? this.indexerUrl,
      faucetUrl: faucetUrl ?? this.faucetUrl,
      networkName: networkName ?? this.networkName,
      isCustom: isCustom,
      id: id,
    );
  }

  // TODO: move from the model to another place
  //List of networks to fetch NFTs for. Might include legacy networks and
  /// networks not supported by the blockchain
  static List<String> networkNamesForNftFetching(
      List<BlockchainNetwork> networks) {
    final existing = networks.map((n) => n.networkName).toList();
    final additionalNetworks = ['beta3', 'beta4'];
    return existing + additionalNetworks;
  }

  @override
  String toString() {
    return 'BlockchainNetwork{\n'
        'host: $host, \n'
        'indexerUrl: $indexerUrl, \n'
        'faucetUrl: $faucetUrl, \n'
        'networkName: $networkName, \n'
        'isCustom: $isCustom, \n'
        'id: $id \n'
        '}';
  }
}
