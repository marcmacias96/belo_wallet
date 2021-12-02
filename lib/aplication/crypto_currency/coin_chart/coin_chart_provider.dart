import 'package:crypto_belo/infrastucture/coin/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './coin_chart_notifier.dart';

final coinChartProvider =
    StateNotifierProvider.autoDispose<CoinChartNotifier, CoinChartState>(
        (ref) => CoinChartNotifier(ref.read(coinRepositoryProvider)));
