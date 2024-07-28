// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derivative_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DerivativeInfoAdapter extends TypeAdapter<DerivativeInfo> {
  @override
  final int typeId = 11;

  @override
  DerivativeInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DerivativeInfo(
      index: fields[0] as int,
      derivedFrom: fields[1] as AccountAddress,
    );
  }

  @override
  void write(BinaryWriter writer, DerivativeInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.derivedFrom);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DerivativeInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
