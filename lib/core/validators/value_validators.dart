import 'package:dartz/dartz.dart';

import 'value_failures.dart';

Either<ValueFailure<double>, double> balanceValidator(
  double input,
  double balance,
) {
  if (input <= balance) {
    return right(input);
  } else {
    return left(
      ValueFailure.insufficientBalance(
        failedValue: input,
      ),
    );
  }
}

Either<ValueFailure<String>, String> convertValidator(
  String toSym,
  String fromSym,
) {
  if (toSym == fromSym) {
    return right(toSym);
  } else {
    return left(
      ValueFailure.equalsCoins(
        failedValue: toSym,
      ),
    );
  }
}
