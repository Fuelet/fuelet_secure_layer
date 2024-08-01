// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_network.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BlockchainNetworkAdapter extends TypeAdapter<BlockchainNetwork> {
  @override
  final int typeId = 9;

  @override
  BlockchainNetwork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BlockchainNetwork(
      host: fields[0] as String,
      indexerUrl: fields[1] as String,
      faucetUrl: fields[2] as String?,
      networkName: fields[3] as String,
      isCustom: fields[4] as bool,
      id: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BlockchainNetwork obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.host)
      ..writeByte(1)
      ..write(obj.indexerUrl)
      ..writeByte(2)
      ..write(obj.faucetUrl)
      ..writeByte(3)
      ..write(obj.networkName)
      ..writeByte(4)
      ..write(obj.isCustom)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlockchainNetworkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
