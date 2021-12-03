import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/domain/coin/i_coin_repository.dart';
import 'package:crypto_belo/domain/portfolio/crypto_active.dart';
import 'package:crypto_belo/domain/portfolio/i_portfolio_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_notifier.freezed.dart';
part 'wallet_state.dart';

class WalletNotifier extends StateNotifier<WalletState> {
  final ICoinRepository _coinRepository;
  final IPortfolioRepository _portfolioRepository;
  WalletNotifier(this._coinRepository, this._portfolioRepository)
      : super(const WalletState.initial());

  Future<void> getBalance() async {
    state = const Loading();
    final portfolio = await _getPortFolio();
    final failureOrCoins = await _coinRepository.getAllCoins();
    state = failureOrCoins.fold(
      (failure) => Failure(
        failure.when(
          unexpected: () => "Ocurrio un error inesperado.",
          timeOut: () => "La Peticion tomo demaciado tiempo",
          networkFail: (statusCode, msg) => "$statusCode: $msg",
        ),
      ),
      (coins) {
        double balance = 0.0;
        List<Coin> portfolioCoins = [];
        for (var cryptoActive in portfolio) {
          var index =
              coins.indexWhere((coin) => cryptoActive.symbol == coin.symbol);
          if (index != -1) {
            final amount = cryptoActive.amount;
            final valueInUsd = coins[index].currentPrice * amount;
            balance += valueInUsd;
            portfolioCoins.add(
                coins[index].copyWith(balance: amount, valueInUsd: valueInUsd));
          }
        }
        return Success(portfolioCoins, balance);
      },
    );
  }

  Future<List<CryptoActive>> _getPortFolio() async {
    final failureOrCoins = await _portfolioRepository.getPortfolio();
    return failureOrCoins.fold(
      (failure) => [],
      (coins) => coins,
    );
  }
}
