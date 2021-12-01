part of 'coin_list_notifier.dart';

@freezed
class CoinListState with _$CoinListState {
  const factory CoinListState.initial() = _Initial;
  const factory CoinListState.loading() = Loading;
  const factory CoinListState.success(List<Coin> coins) = Success;
  const factory CoinListState.failure(CoinFailure failure) = Failure;
}
