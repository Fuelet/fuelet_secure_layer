import 'package:equatable/equatable.dart';

class TokenBalance with EquatableMixin {
  final double amount;
  final int fractionalAmount;
  final int decimal;
  final String asset;
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
    required this.asset,
    required this.symbol,
    required this.name,
    this.iconUrl,
    this.order,
    this.featured,
    this.coinId,
  });

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
