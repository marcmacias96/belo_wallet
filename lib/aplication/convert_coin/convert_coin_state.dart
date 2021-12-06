part of 'convert_coin_notifier.dart';

@freezed
class ConvertCoinState with _$ConvertCoinState {
  const factory ConvertCoinState({
    required Coin from,
    required Coin to,
    required TextEditingController fromController,
    required TextEditingController toController,
    PreviewModel? previewModel,
    required bool isLoading,
    required Option<Either<PortfolioFailure, Unit>>
        convertFailureOrSuccessOption,
    required List<Coin> allCoins,
    required List<Coin> portfolio,
    required bool fromIsFocus,
    required bool invalidConversion,
  }) = _ConvertCoinState;

  factory ConvertCoinState.initial() => ConvertCoinState(
        from: Coin.empty(),
        to: Coin.empty(),
        isLoading: false,
        convertFailureOrSuccessOption: none(),
        allCoins: [],
        portfolio: [],
        fromController: TextEditingController(),
        toController: TextEditingController(),
        fromIsFocus: false,
        invalidConversion: false,
      );
}
