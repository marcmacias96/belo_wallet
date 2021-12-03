import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_failure.freezed.dart';

@freezed
class WalletFailure with _$WalletFailure {
  factory WalletFailure.unexpected() = Unexpected;
  factory WalletFailure.timeOut() = TimeOut;
  factory WalletFailure.networkFail(int statusCode, String message) =
      NetWorkFail;
  factory WalletFailure.convertFails(String message) = _ConvertFails;
}
