import 'package:dartz/dartz.dart';

import 'coin.dart';
import 'coin_failure.dart';

abstract class ICoinRepository {
  Future<Either<CoinFailure, List<Coin>>> getAllCoins(
      {required String listOfCoins});

  Future<Either<CoinFailure, Unit>> updateWallet(Coin to, Coin from);
}
