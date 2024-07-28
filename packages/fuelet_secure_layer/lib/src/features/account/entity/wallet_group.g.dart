// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_group.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WalletGroupAdapter extends TypeAdapter<WalletGroup> {
  @override
  final int typeId = 5;

  @override
  WalletGroup read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return WalletGroup.watchlist;
      case 1:
        return WalletGroup.myWallets;
      default:
        return WalletGroup.watchlist;
    }
  }

  @override
  void write(BinaryWriter writer, WalletGroup obj) {
    switch (obj) {
      case WalletGroup.watchlist:
        writer.writeByte(0);
        break;
      case WalletGroup.myWallets:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WalletGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
