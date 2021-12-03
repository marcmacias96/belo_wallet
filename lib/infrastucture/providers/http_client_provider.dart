import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final httpClientProvider = Provider<Dio>((ref) {
  Dio dio = Dio(BaseOptions(
    baseUrl: "https://api.coingecko.com/api/v3",
  ));
  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: true,
    error: true,
    compact: true,
    maxWidth: 90,
  ));
  return dio;
});
