// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final int typeId = 0;

  @override
  Account read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Account(
      fuelAddress: fields[0] as AccountAddress,
      createdAt: fields[2] as DateTime,
      hardwareSignerTag: fields[6] as String?,
      walletGroup:
          fields[3] == null ? WalletGroup.myWallets : fields[3] as WalletGroup,
      addingMethod: fields[4] == null
          ? AccountAddingMethod.notDetected
          : fields[4] as AccountAddingMethod,
      derivativeInfo: fields[5] as DerivativeInfo?,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.fuelAddress)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.walletGroup)
      ..writeByte(4)
      ..write(obj.addingMethod)
      ..writeByte(5)
      ..write(obj.derivativeInfo)
      ..writeByte(6)
      ..write(obj.hardwareSignerTag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
