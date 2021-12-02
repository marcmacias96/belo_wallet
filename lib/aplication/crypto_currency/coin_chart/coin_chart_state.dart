part of 'coin_chart_notifier.dart';

// @freezed
// class CoinChartState with _$CoinChartState {
//   const factory CoinChartState.initial() = _Initial;
//   const factory CoinChartState.loading() = Loading;
//   const factory CoinChartState.success(List<FlSpot> coins, Coin coin) = Success;
//   const factory CoinChartState.failure(CoinFailure failure) = Failure;
// }

@freezed
class CoinChartState with _$CoinChartState {
  const factory CoinChartState({
    required List<FlSpot> chart,
    required Coin coin,
    required bool isLoading,
    required bool hasErrors,
    required double min,
  }) = _LayoutState;

  factory CoinChartState.initial() => CoinChartState(
        chart: [],
        coin: Coin.empty(),
        isLoading: false,
        hasErrors: false,
        min: 0.0,
      );
}
