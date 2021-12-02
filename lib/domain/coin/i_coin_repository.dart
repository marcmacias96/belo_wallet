import 'package:dartz/dartz.dart';
import 'package:fl_chart/fl_chart.dart';

import 'coin.dart';
import 'coin_failure.dart';

abstract class ICoinRepository {
  Future<Either<CoinFailure, List<Coin>>> getAllCoins();
  Future<Either<CoinFailure, List<dynamic>>> getChart({required Coin coin});

  Future<Either<CoinFailure, Unit>> updateWallet(Coin to, Coin from);
}
