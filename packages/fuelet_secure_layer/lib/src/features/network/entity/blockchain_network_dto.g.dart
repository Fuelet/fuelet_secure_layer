// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_network_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockchainNetworkDto _$BlockchainNetworkDtoFromJson(
        Map<String, dynamic> json) =>
    BlockchainNetworkDto(
      host: json['host'] as String,
      indexerUrl: json['indexerUrl'] as String,
      faucetUrl: json['faucetUrl'] as String?,
      networkName: json['networkName'] as String,
      isCustom: json['isCustom'] as bool,
      id: json['id'] as String,
    );

Map<String, dynamic> _$BlockchainNetworkDtoToJson(
        BlockchainNetworkDto instance) =>
    <String, dynamic>{
      'host': instance.host,
      'indexerUrl': instance.indexerUrl,
      'faucetUrl': instance.faucetUrl,
      'networkName': instance.networkName,
      'isCustom': instance.isCustom,
      'id': instance.id,
    };
