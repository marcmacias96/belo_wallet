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
  Future<Either<CoinFailure, List<Coin>>> getAllCoins() async {
    try {
      var response = await _dio.get(
        "/coins/markets",
        queryParameters: {'vs_currency': 'usd', 'per_page': 20},
      );
      List<dynamic> listMaps = response.data;
      var list = listMaps
          .map((jsonCoin) => CoinDto.fromJson(jsonCoin).toDomain())
          .toList();
      return right(list);
    } on DioError catch (e) {
      _logger.e(
        "Could not get the list of coins due to this error",
        e.message,
      );
      return left(
        CoinFailure.networkFail(
          e.response?.statusCode ?? 0,
          e.response == null ? "Sin conexion a internet" : e.message,
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
    throw UnimplementedError();
  }

  @override
  Future<Either<CoinFailure, List<dynamic>>> getChart(
      {required Coin coin}) async {
    try {
      var response = await _dio.get(
        "/coins/${coin.id}/market_chart",
        queryParameters: {'vs_currency': 'usd', 'days': 1},
      );

      return right((response.data["prices"] as List<dynamic>));
    } on DioError catch (e) {
      _logger.e(
        "Could not get the list of coin ${coin.id} due to this error",
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
}
