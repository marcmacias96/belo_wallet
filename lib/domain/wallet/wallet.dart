import 'package:freezed_annotation/freezed_annotation.dart';
import '../coin/coin.dart';
part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  factory Wallet({
    required double balance,
    required List<Coin> coins,
  }) = _Wallet;

  factory Wallet.empty() => Wallet(
        balance: 0,
        coins: [],
      );
}
