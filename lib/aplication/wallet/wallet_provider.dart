import 'package:crypto_belo/aplication/wallet/wallet_notifier.dart';
import 'package:crypto_belo/infrastucture/coin/coin_repository.dart';
import 'package:crypto_belo/infrastucture/portfolio/portfolio_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final walletNotifierProvider =
    StateNotifierProvider.autoDispose<WalletNotifier, WalletState>(
  (ref) => WalletNotifier(
    ref.read(coinRepositoryProvider),
    ref.read(portfolioRepositoryProvider),
  )..getBalance(),
);
