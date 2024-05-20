// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adding_method.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountAddingMethodAdapter extends TypeAdapter<AccountAddingMethod> {
  @override
  final int typeId = 7;

  @override
  AccountAddingMethod read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AccountAddingMethod.create;
      case 1:
        return AccountAddingMethod.importWithSeedPhrase;
      case 2:
        return AccountAddingMethod.importWithPrivateKey;
      case 3:
        return AccountAddingMethod.importWithTrackWallet;
      case 4:
        return AccountAddingMethod.importMultipleWallets;
      case 5:
        return AccountAddingMethod.notDetected;
      case 6:
        return AccountAddingMethod.createdAsHS;
      default:
        return AccountAddingMethod.create;
    }
  }

  @override
  void write(BinaryWriter writer, AccountAddingMethod obj) {
    switch (obj) {
      case AccountAddingMethod.create:
        writer.writeByte(0);
        break;
      case AccountAddingMethod.importWithSeedPhrase:
        writer.writeByte(1);
        break;
      case AccountAddingMethod.importWithPrivateKey:
        writer.writeByte(2);
        break;
      case AccountAddingMethod.importWithTrackWallet:
        writer.writeByte(3);
        break;
      case AccountAddingMethod.importMultipleWallets:
        writer.writeByte(4);
        break;
      case AccountAddingMethod.notDetected:
        writer.writeByte(5);
        break;
      case AccountAddingMethod.createdAsHS:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAddingMethodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
