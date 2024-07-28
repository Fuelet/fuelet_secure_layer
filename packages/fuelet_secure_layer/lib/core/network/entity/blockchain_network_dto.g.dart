// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_network_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockchainNetworkDto _$BlockchainNetworkDtoFromJson(Map json) =>
    BlockchainNetworkDto(
      host: json['host'] as String,
      indexerUrl: json['indexerUrl'] as String,
      faucetUrl: json['faucetUrl'] as String?,
      networkName: json['networkName'] as String,
      isCustom: json['isCustom'] as bool,
      id: json['id'] as String,
    );

Map<String, dynamic> _$BlockchainNetworkDtoToJson(
    BlockchainNetworkDto instance) {
  final val = <String, dynamic>{
    'host': instance.host,
    'indexerUrl': instance.indexerUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('faucetUrl', instance.faucetUrl);
  val['networkName'] = instance.networkName;
  val['isCustom'] = instance.isCustom;
  val['id'] = instance.id;
  return val;
}
