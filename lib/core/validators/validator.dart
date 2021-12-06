import 'package:dartz/dartz.dart';
import 'value_failures.dart';
import 'value_validators.dart';

class Validator {
  Validator._();

  static Either<ValueFailure<double>, double> validateBalance(
      double input, double balance) {
    return balanceValidator(input, balance);
  }

  static Either<ValueFailure<double>, double> validateConvert(
      String fromSym, String toSym) {
    return validateConvert(fromSym, toSym);
  }
}
