import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.insufficientBalance({
    required double failedValue,
  }) = InsufficientBalance<T>;

  const factory ValueFailure.equalsCoins({
    required String failedValue,
  }) = EqualsCoins<T>;
}
