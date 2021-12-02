import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:crypto_belo/domain/coin/coin_failure.dart';
import 'package:crypto_belo/domain/coin/i_coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coin_list_notifier.freezed.dart';
part 'coin_list_state.dart';

class CoinListNotifier extends StateNotifier<CoinListState> {
  final ICoinRepository _coinRepository;
  CoinListNotifier(this._coinRepository) : super(const CoinListState.initial());

  Future<void> getAllCoins() async {
    state = const Loading();
    final failureOrCoins = await _coinRepository.getAllCoins();
    state = failureOrCoins.fold(
      (failure) => Failure(failure),
      (coins) => Success(coins),
    );
  }
}
