import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_active.freezed.dart';

@freezed
class CryptoActive with _$CryptoActive {
  factory CryptoActive({
    required double amount,
    required String symbol,
  }) = _CryptoActive;

  factory CryptoActive.empty() => CryptoActive(
        amount: 0.0,
        symbol: '',
      );
}
