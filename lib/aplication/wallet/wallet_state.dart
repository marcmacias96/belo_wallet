part of 'wallet_notifier.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loading() = Loading;
  const factory WalletState.success(List<Coin> coins, double balance) = Success;
  const factory WalletState.failure(String failure) = Failure;
}
