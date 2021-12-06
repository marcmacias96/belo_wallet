import 'package:crypto_belo/infrastucture/coin/coin_repository.dart';
import 'package:crypto_belo/infrastucture/portfolio/portfolio_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'convert_coin_notifier.dart';

final convertCoinNotifierProvider =
    StateNotifierProvider.autoDispose<ConvertCoinNotifier, ConvertCoinState>(
        (ref) => ConvertCoinNotifier(ref.read(coinRepositoryProvider),
            ref.read(portfolioRepositoryProvider), ref.read)
          ..getCoins());
