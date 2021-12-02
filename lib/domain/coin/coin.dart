import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin.freezed.dart';

@freezed
class Coin with _$Coin {
  factory Coin({
    required String id,
    required String name,
    required String symbol,
    required String image,
    required double currentPrice,
    required double priceChange,
  }) = _Coin;

  factory Coin.empty() => Coin(
        id: '',
        name: '',
        symbol: '',
        image: '',
        currentPrice: 0.0,
        priceChange: 0.0,
      );
}
