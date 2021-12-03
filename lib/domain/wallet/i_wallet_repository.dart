import 'package:crypto_belo/domain/coin/coin.dart';
import 'package:dartz/dartz.dart';

import 'wallet.dart';
import 'wallet_failure.dart';

abstract class IWalletRepository {
  Future<Either<WalletFailure, Wallet>> getWallet();
  Future<Either<WalletFailure, List<Coin>>> getWalletCoins();
}
