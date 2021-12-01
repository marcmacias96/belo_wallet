import 'package:crypto_belo/infrastucture/coin/coin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './coin_list_notifier.dart';

final coinListProvider =
    StateNotifierProvider.autoDispose<CoinListNotifier, CoinListState>((ref) =>
        CoinListNotifier(ref.read(coinRepositoryProvider))..getAllCoins());
