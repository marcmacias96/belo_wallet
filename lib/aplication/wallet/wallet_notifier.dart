import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/domain/coin/i_coin_repository.dart';
import 'package:crypto_belo/domain/portfolio/crypto_active.dart';
import 'package:crypto_belo/domain/portfolio/i_portfolio_repository.dart';
import 'package:crypto_belo/presentation/core/models/preview_model.dart';
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

  Future<void> updatePortfolio({
    required Coin to,
    required Coin from,
    required PreviewModel convertion,
  }) async {
    final actualCoins = (state as Success).coins;
    var total = (state as Success).balance;

    var actualiIndexFrom =
        actualCoins.indexWhere((item) => from.symbol == item.symbol);
    var actB = actualCoins[actualiIndexFrom].balance! - from.balance!;
    actualCoins[actualiIndexFrom] = actualCoins[actualiIndexFrom].copyWith(
        balance: actualCoins[actualiIndexFrom].balance! - from.balance!,
        valueInUsd: ((actualCoins[actualiIndexFrom].balance! - from.balance!) *
            from.currentPrice));

    var actualIndexTo =
        actualCoins.indexWhere((item) => to.symbol == item.symbol);
    if (actualIndexTo != -1) {
      actualCoins[actualIndexTo] = actualCoins[actualIndexTo].copyWith(
          balance: actualCoins[actualIndexTo].balance! + to.balance!,
          valueInUsd: ((actualCoins[actualIndexTo].balance! + to.balance!) *
              to.currentPrice));
    } else {
      actualCoins.add(to);
    }

    actualCoins.map((coin) {
      total += coin.valueInUsd!;
    });

    state = Success(actualCoins, total);
  }
}
