import 'dart:convert';

import 'package:crypto_belo/domain/coin/coin_failure.dart';
import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/domain/coin/i_coin_repository.dart';
import 'package:crypto_belo/infrastucture/coin/dtos/coin_dto.dart';
import 'package:crypto_belo/infrastucture/providers/http_client_provider.dart';
import 'package:crypto_belo/infrastucture/providers/logger_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final coinRepositoryProvider = Provider<ICoinRepository>(
  (ref) =>
      CoinRepository(ref.read(httpClientProvider), ref.read(loggerProvider)),
);

class CoinRepository extends ICoinRepository {
  final Dio _dio;
  final Logger _logger;

  CoinRepository(this._dio, this._logger);
  @override
  Future<Either<CoinFailure, List<Coin>>> getAllCoins({
    required String listOfCoins,
  }) async {
    try {
      var response = await _dio.get(
        "/api/v3/coins/markets",
        queryParameters: {'vs_currency': 'usd', 'ids': listOfCoins},
      );
      List<dynamic> listMaps = response.data;
      var list = listMaps
          .map((jsonCoin) => CoinDto.fromJson(jsonCoin).toDomain())
          .toList();
      return right(list);
    } on DioError catch (e) {
      _logger.e(
        "Could not get the list of coins $listOfCoins due to this error",
        e.message,
      );
      return left(
        CoinFailure.networkFail(
          e.response!.statusCode!,
          e.message,
        ),
      );
    } catch (e) {
      _logger.e(
        "An unexpected error occurred",
        e.toString(),
      );
      return left(
        CoinFailure.unexpected(),
      );
    }
  }

  @override
  Future<Either<CoinFailure, Unit>> updateWallet(Coin to, Coin from) {
    // TODO: implement updateWallet
    throw UnimplementedError();
  }
}