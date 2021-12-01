import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_failure.freezed.dart';

@freezed
class CoinFailure with _$CoinFailure {
  factory CoinFailure.unexpected() = Unexpected;
  factory CoinFailure.timeOut() = TimeOut;
  factory CoinFailure.networkFail(int statusCode, String message) = NetWorkFail;
}
