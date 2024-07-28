import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuelet_secure_layer/fuelet_secure_layer.dart';

part 'blockchain_network_dto.g.dart';

@JsonSerializable()
class BlockchainNetworkDto {
  final String host;
  final String indexerUrl;
  final String? faucetUrl;
  final String networkName;
  final bool isCustom;
  final String id;

  const BlockchainNetworkDto({
    required this.host,
    required this.indexerUrl,
    required this.faucetUrl,
    required this.networkName,
    required this.isCustom,
    required this.id,
  });

  factory BlockchainNetworkDto.fromJson(Map json) =>
      _$BlockchainNetworkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BlockchainNetworkDtoToJson(this);

  factory BlockchainNetworkDto.fromEntity(BlockchainNetwork entity) {
    return BlockchainNetworkDto(
      host: entity.host,
      indexerUrl: entity.indexerUrl,
      faucetUrl: entity.faucetUrl,
      networkName: entity.networkName,
      isCustom: entity.isCustom,
      id: entity.id,
    );
  }

  BlockchainNetwork toEntity() {
    return BlockchainNetwork(
      host: host,
      indexerUrl: indexerUrl,
      faucetUrl: faucetUrl,
      networkName: networkName,
      isCustom: isCustom,
      id: id,
    );
  }
}
