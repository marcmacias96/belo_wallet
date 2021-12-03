import 'package:crypto_belo/domain/portfolio/crypto_active.dart';
import 'package:crypto_belo/domain/portfolio/portfolio_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IPortfolioRepository {
  Future<Either<PortfolioFailure, List<CryptoActive>>> getPortfolio();
}
