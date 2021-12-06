import 'package:crypto_belo/aplication/wallet/wallet_provider.dart';
import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/domain/coin/coin_failure.dart';
import 'package:crypto_belo/domain/coin/i_coin_repository.dart';
import 'package:crypto_belo/domain/portfolio/crypto_active.dart';
import 'package:crypto_belo/domain/portfolio/i_portfolio_repository.dart';
import 'package:crypto_belo/domain/portfolio/portfolio_failure.dart';
import 'package:crypto_belo/presentation/core/models/preview_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'convert_coin_notifier.freezed.dart';
part 'convert_coin_state.dart';

class ConvertCoinNotifier extends StateNotifier<ConvertCoinState> {
  final ICoinRepository _coinRepository;
  final IPortfolioRepository _portfolioRepository;
  final Reader _read;
  ConvertCoinNotifier(
      this._coinRepository, this._portfolioRepository, this._read)
      : super(ConvertCoinState.initial());

  void setFrom(Coin from) {
    var findCoin =
        state.allCoins.where((element) => element.symbol == state.from.symbol);
    if (findCoin.isEmpty && state.from != Coin.empty()) {
      state.allCoins.add(state.from);
    }
    state.allCoins.removeWhere((item) => item.symbol == from.symbol);
    state.allCoins.sortBy((element) => element.name);
    state = state.copyWith(
      from: from,
      allCoins: state.allCoins,
    );
  }

  void setTo(Coin to) {
    var findCoin =
        state.portfolio.where((element) => element.symbol == state.to.symbol);
    if (findCoin.isEmpty && state.to != Coin.empty()) {
      state.portfolio.add(state.to);
    }
    state.portfolio.removeWhere((item) => item.symbol == to.symbol);
    state.portfolio.sortBy((element) => element.name);
    state = state.copyWith(
      to: to,
      portfolio: state.portfolio,
    );
  }

  Future<void> getCoins() async {
    final failureOrAllCoins = await _coinRepository.getAllCoins();
    final failureOrPortfolio = await _portfolioRepository.getPortfolio();
    List<Coin> allCoins =
        failureOrAllCoins.fold((l) => [], (allCoins) => allCoins);
    List<Coin> portfolio = failureOrPortfolio.fold(
      (l) => [],
      (portfolio) {
        List<Coin> portfolioCoins = [];
        for (var cryptoActive in portfolio) {
          var index =
              allCoins.indexWhere((coin) => cryptoActive.symbol == coin.symbol);
          if (index != -1) {
            final amount = cryptoActive.amount;
            final valueInUsd = allCoins[index].currentPrice * amount;
            portfolioCoins.add(
              allCoins[index].copyWith(balance: amount, valueInUsd: valueInUsd),
            );
          }
        }
        return portfolioCoins;
      },
    );

    allCoins.sortBy((element) => element.name);
    portfolio.sortBy((element) => element.name);

    state = state.copyWith(
      allCoins: allCoins,
      portfolio: portfolio,
    );
  }

  void changeFocus(bool value) {
    state = state.copyWith(
      fromIsFocus: value,
    );
  }

  void setAmount(String value) {
    if (state.fromIsFocus) {
      state.toController.text = "";
      state.fromController.text = state.fromController.text + value;
      state = state.copyWith(
        fromController: state.fromController,
        toController: state.toController,
      );
    } else {
      state.fromController.text = "";
      state.toController.text = state.toController.text + value;
      state = state.copyWith(
        toController: state.toController,
        fromController: state.fromController,
      );
    }
  }

  void removeAmount() {
    if (state.fromIsFocus) {
      if (state.fromController.text.isNotEmpty) {
        state.fromController.text = state.fromController.text
            .substring(0, state.fromController.text.length - 1);
        state = state.copyWith(
          fromController: state.fromController,
        );
      }
    } else {
      if (state.toController.text.isNotEmpty) {
        state.toController.text = state.toController.text
            .substring(0, state.toController.text.length - 1);
        state = state.copyWith(
          toController: state.toController,
        );
      }
    }
  }

  bool canConvert() {
    bool suficientBalance = false;
    bool hasAmount = false;
    bool hasSelectedCoins =
        state.from != Coin.empty() && state.to != Coin.empty();
    if (hasSelectedCoins) {
      suficientBalance = state.from.balance! >=
          double.parse(state.fromController.text == ""
              ? "0"
              : state.fromController.text);

      hasAmount =
          state.fromController.text != "" || state.toController.text != "";
    }

    return (suficientBalance && hasSelectedCoins && hasAmount);
  }

  void previewConvert() {
    if (state.fromController.text != "") {
      final fromOnDollars =
          state.from.currentPrice * double.parse(state.fromController.text);
      final totalConvert = fromOnDollars / state.to.currentPrice;
      final rate = state.from.currentPrice / state.to.currentPrice;

      state = state.copyWith(
        previewModel: PreviewModel(
          amount: double.parse(state.fromController.text),
          rate: rate,
          total: totalConvert,
        ),
      );
    } else {
      final toOnDollars =
          state.to.currentPrice * double.parse(state.toController.text);
      if (toOnDollars < (state.from.balance! * state.from.currentPrice)) {
        final rate = state.to.currentPrice / state.from.currentPrice;

        state = state.copyWith(
          previewModel: PreviewModel(
            amount: double.parse(state.toController.text),
            rate: rate,
            total: double.parse(state.toController.text),
          ),
        );
      } else {
        state = state.copyWith(
          invalidConversion: true,
        );
      }
    }
  }

  Future<void> convert() async {
    state = state.copyWith(
      isLoading: true,
    );
    var updatedTo;
    var updatedFrom;

    if (state.fromController.text != "") {
      updatedFrom = state.from.copyWith(
        balance: state.previewModel!.amount,
        valueInUsd: (state.previewModel!.amount * state.from.currentPrice),
      );
      updatedTo = state.to.copyWith(
        balance: state.previewModel!.total,
        valueInUsd: (state.previewModel!.total * state.to.currentPrice),
      );
    } else {
      updatedTo = state.to.copyWith(
        balance: state.previewModel!.amount,
        valueInUsd: (state.previewModel!.amount * state.to.currentPrice),
      );
      updatedFrom = state.from.copyWith(
        balance: state.previewModel!.rate,
        valueInUsd: (state.previewModel!.total * state.from.currentPrice),
      );
    }

    final failureOrSuccess =
        await _portfolioRepository.updatePortfolio(updatedTo, updatedFrom);
    if (failureOrSuccess.isRight()) {
      _read(walletNotifierProvider.notifier).updatePortfolio(
        from: updatedFrom,
        to: updatedTo,
        convertion: state.previewModel!,
      );
    }
    state = state.copyWith(
      isLoading: false,
      convertFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
