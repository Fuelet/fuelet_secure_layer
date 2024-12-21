import 'package:equatable/equatable.dart';
import 'package:fuelet_secure_layer/src/model/hex_string.dart';

class TokenBalance with EquatableMixin {
  final double amount;
  final int fractionalAmount;
  final int decimal;
  final String _asset;
  final String symbol;
  final String name;
  final String? iconUrl;
  final String? coinId;
  final int? featured;
  final int? order;

  const TokenBalance({
    required this.amount,
    required this.fractionalAmount,
    required this.decimal,
    required asset,
    required this.symbol,
    required this.name,
    required this.iconUrl,
    this.order,
    this.featured,
    this.coinId,
  }) : _asset = asset;

  HexString get asset => HexString(_asset);

  @override
  String toString() {
    return 'TokenBalance{amount: $amount, fractionalAmount: $fractionalAmount, decimal: $decimal, asset: $asset, symbol: $symbol, name: $name, coinId: $coinId, featured: $featured, order: $order}';
  }

  @override
  List<Object?> get props => [
        amount,
        fractionalAmount,
        decimal,
        asset,
        symbol,
        name,
        iconUrl,
        coinId,
        order,
        featured,
      ];
}
