import 'package:crypto_belo/domain/portfolio/crypto_active.dart';
import 'package:crypto_belo/domain/portfolio/i_portfolio_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:crypto_belo/domain/portfolio/portfolio_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final portfolioRepositoryProvider = Provider<IPortfolioRepository>(
  (ref) => PortfolioRepository(),
);

class PortfolioRepository extends IPortfolioRepository {
  @override
  Future<Either<PortfolioFailure, List<CryptoActive>>> getPortfolio() async {
    try {
      var portfolio =
          await Future.delayed(const Duration(milliseconds: 500), () {
        return [
          CryptoActive(amount: 0.009999, symbol: 'btc'),
          CryptoActive(amount: 15, symbol: 'ustd'),
          CryptoActive(amount: 2, symbol: 'sol'),
          CryptoActive(amount: 0.5, symbol: "eth"),
          CryptoActive(amount: 20, symbol: "dot"),
        ];
      });
      return right(portfolio);
    } on PortfolioFailure catch (_) {
      return left(PortfolioFailure.unexpected());
    }
  }
}
