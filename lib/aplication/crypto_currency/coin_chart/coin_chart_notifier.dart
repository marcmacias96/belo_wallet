import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/domain/coin/i_coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_chart_notifier.freezed.dart';
part 'coin_chart_state.dart';

class CoinChartNotifier extends StateNotifier<CoinChartState> {
  final ICoinRepository _coinRepository;
  CoinChartNotifier(this._coinRepository) : super(CoinChartState.initial());

  Future<void> getChart(Coin coin) async {
    state = state.copyWith(
      isLoading: true,
      coin: coin,
    );
    var failureOrChart = await _coinRepository.getChart(coin: coin);
    state = failureOrChart.fold(
        (l) => state.copyWith(
              hasErrors: true,
              isLoading: false,
            ), (chart) {
      var index = 0.0;

      var min = double.infinity;
      var points = chart.map((e) {
        index += 5;
        min = e.last < min ? e.last : min;
        return FlSpot(
            index, double.parse((e.last as double).toStringAsFixed(2)));
      }).toList();
      return state.copyWith(
        chart: points,
        isLoading: false,
        min: min,
      );
    });
  }
}
