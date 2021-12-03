import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_failure.freezed.dart';

@freezed
class PortfolioFailure with _$PortfolioFailure {
  factory PortfolioFailure.unexpected() = Unexpected;
}
