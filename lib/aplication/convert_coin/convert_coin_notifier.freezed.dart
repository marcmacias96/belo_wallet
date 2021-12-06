// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'convert_coin_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConvertCoinStateTearOff {
  const _$ConvertCoinStateTearOff();

  _ConvertCoinState call(
      {required Coin from,
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
      required bool invalidConversion}) {
    return _ConvertCoinState(
      from: from,
      to: to,
      fromController: fromController,
      toController: toController,
      previewModel: previewModel,
      isLoading: isLoading,
      convertFailureOrSuccessOption: convertFailureOrSuccessOption,
      allCoins: allCoins,
      portfolio: portfolio,
      fromIsFocus: fromIsFocus,
      invalidConversion: invalidConversion,
    );
  }
}

/// @nodoc
const $ConvertCoinState = _$ConvertCoinStateTearOff();

/// @nodoc
mixin _$ConvertCoinState {
  Coin get from => throw _privateConstructorUsedError;
  Coin get to => throw _privateConstructorUsedError;
  TextEditingController get fromController =>
      throw _privateConstructorUsedError;
  TextEditingController get toController => throw _privateConstructorUsedError;
  PreviewModel? get previewModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<PortfolioFailure, Unit>> get convertFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<Coin> get allCoins => throw _privateConstructorUsedError;
  List<Coin> get portfolio => throw _privateConstructorUsedError;
  bool get fromIsFocus => throw _privateConstructorUsedError;
  bool get invalidConversion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConvertCoinStateCopyWith<ConvertCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertCoinStateCopyWith<$Res> {
  factory $ConvertCoinStateCopyWith(
          ConvertCoinState value, $Res Function(ConvertCoinState) then) =
      _$ConvertCoinStateCopyWithImpl<$Res>;
  $Res call(
      {Coin from,
      Coin to,
      TextEditingController fromController,
      TextEditingController toController,
      PreviewModel? previewModel,
      bool isLoading,
      Option<Either<PortfolioFailure, Unit>> convertFailureOrSuccessOption,
      List<Coin> allCoins,
      List<Coin> portfolio,
      bool fromIsFocus,
      bool invalidConversion});

  $CoinCopyWith<$Res> get from;
  $CoinCopyWith<$Res> get to;
}

/// @nodoc
class _$ConvertCoinStateCopyWithImpl<$Res>
    implements $ConvertCoinStateCopyWith<$Res> {
  _$ConvertCoinStateCopyWithImpl(this._value, this._then);

  final ConvertCoinState _value;
  // ignore: unused_field
  final $Res Function(ConvertCoinState) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? fromController = freezed,
    Object? toController = freezed,
    Object? previewModel = freezed,
    Object? isLoading = freezed,
    Object? convertFailureOrSuccessOption = freezed,
    Object? allCoins = freezed,
    Object? portfolio = freezed,
    Object? fromIsFocus = freezed,
    Object? invalidConversion = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Coin,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Coin,
      fromController: fromController == freezed
          ? _value.fromController
          : fromController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      toController: toController == freezed
          ? _value.toController
          : toController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      previewModel: previewModel == freezed
          ? _value.previewModel
          : previewModel // ignore: cast_nullable_to_non_nullable
              as PreviewModel?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      convertFailureOrSuccessOption: convertFailureOrSuccessOption == freezed
          ? _value.convertFailureOrSuccessOption
          : convertFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PortfolioFailure, Unit>>,
      allCoins: allCoins == freezed
          ? _value.allCoins
          : allCoins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      portfolio: portfolio == freezed
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      fromIsFocus: fromIsFocus == freezed
          ? _value.fromIsFocus
          : fromIsFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      invalidConversion: invalidConversion == freezed
          ? _value.invalidConversion
          : invalidConversion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CoinCopyWith<$Res> get from {
    return $CoinCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $CoinCopyWith<$Res> get to {
    return $CoinCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$ConvertCoinStateCopyWith<$Res>
    implements $ConvertCoinStateCopyWith<$Res> {
  factory _$ConvertCoinStateCopyWith(
          _ConvertCoinState value, $Res Function(_ConvertCoinState) then) =
      __$ConvertCoinStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Coin from,
      Coin to,
      TextEditingController fromController,
      TextEditingController toController,
      PreviewModel? previewModel,
      bool isLoading,
      Option<Either<PortfolioFailure, Unit>> convertFailureOrSuccessOption,
      List<Coin> allCoins,
      List<Coin> portfolio,
      bool fromIsFocus,
      bool invalidConversion});

  @override
  $CoinCopyWith<$Res> get from;
  @override
  $CoinCopyWith<$Res> get to;
}

/// @nodoc
class __$ConvertCoinStateCopyWithImpl<$Res>
    extends _$ConvertCoinStateCopyWithImpl<$Res>
    implements _$ConvertCoinStateCopyWith<$Res> {
  __$ConvertCoinStateCopyWithImpl(
      _ConvertCoinState _value, $Res Function(_ConvertCoinState) _then)
      : super(_value, (v) => _then(v as _ConvertCoinState));

  @override
  _ConvertCoinState get _value => super._value as _ConvertCoinState;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? fromController = freezed,
    Object? toController = freezed,
    Object? previewModel = freezed,
    Object? isLoading = freezed,
    Object? convertFailureOrSuccessOption = freezed,
    Object? allCoins = freezed,
    Object? portfolio = freezed,
    Object? fromIsFocus = freezed,
    Object? invalidConversion = freezed,
  }) {
    return _then(_ConvertCoinState(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Coin,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Coin,
      fromController: fromController == freezed
          ? _value.fromController
          : fromController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      toController: toController == freezed
          ? _value.toController
          : toController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      previewModel: previewModel == freezed
          ? _value.previewModel
          : previewModel // ignore: cast_nullable_to_non_nullable
              as PreviewModel?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      convertFailureOrSuccessOption: convertFailureOrSuccessOption == freezed
          ? _value.convertFailureOrSuccessOption
          : convertFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PortfolioFailure, Unit>>,
      allCoins: allCoins == freezed
          ? _value.allCoins
          : allCoins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      portfolio: portfolio == freezed
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
      fromIsFocus: fromIsFocus == freezed
          ? _value.fromIsFocus
          : fromIsFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      invalidConversion: invalidConversion == freezed
          ? _value.invalidConversion
          : invalidConversion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConvertCoinState implements _ConvertCoinState {
  const _$_ConvertCoinState(
      {required this.from,
      required this.to,
      required this.fromController,
      required this.toController,
      this.previewModel,
      required this.isLoading,
      required this.convertFailureOrSuccessOption,
      required this.allCoins,
      required this.portfolio,
      required this.fromIsFocus,
      required this.invalidConversion});

  @override
  final Coin from;
  @override
  final Coin to;
  @override
  final TextEditingController fromController;
  @override
  final TextEditingController toController;
  @override
  final PreviewModel? previewModel;
  @override
  final bool isLoading;
  @override
  final Option<Either<PortfolioFailure, Unit>> convertFailureOrSuccessOption;
  @override
  final List<Coin> allCoins;
  @override
  final List<Coin> portfolio;
  @override
  final bool fromIsFocus;
  @override
  final bool invalidConversion;

  @override
  String toString() {
    return 'ConvertCoinState(from: $from, to: $to, fromController: $fromController, toController: $toController, previewModel: $previewModel, isLoading: $isLoading, convertFailureOrSuccessOption: $convertFailureOrSuccessOption, allCoins: $allCoins, portfolio: $portfolio, fromIsFocus: $fromIsFocus, invalidConversion: $invalidConversion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConvertCoinState &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.fromController, fromController) ||
                other.fromController == fromController) &&
            (identical(other.toController, toController) ||
                other.toController == toController) &&
            (identical(other.previewModel, previewModel) ||
                other.previewModel == previewModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.convertFailureOrSuccessOption,
                    convertFailureOrSuccessOption) ||
                other.convertFailureOrSuccessOption ==
                    convertFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.allCoins, allCoins) &&
            const DeepCollectionEquality().equals(other.portfolio, portfolio) &&
            (identical(other.fromIsFocus, fromIsFocus) ||
                other.fromIsFocus == fromIsFocus) &&
            (identical(other.invalidConversion, invalidConversion) ||
                other.invalidConversion == invalidConversion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      from,
      to,
      fromController,
      toController,
      previewModel,
      isLoading,
      convertFailureOrSuccessOption,
      const DeepCollectionEquality().hash(allCoins),
      const DeepCollectionEquality().hash(portfolio),
      fromIsFocus,
      invalidConversion);

  @JsonKey(ignore: true)
  @override
  _$ConvertCoinStateCopyWith<_ConvertCoinState> get copyWith =>
      __$ConvertCoinStateCopyWithImpl<_ConvertCoinState>(this, _$identity);
}

abstract class _ConvertCoinState implements ConvertCoinState {
  const factory _ConvertCoinState(
      {required Coin from,
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
      required bool invalidConversion}) = _$_ConvertCoinState;

  @override
  Coin get from;
  @override
  Coin get to;
  @override
  TextEditingController get fromController;
  @override
  TextEditingController get toController;
  @override
  PreviewModel? get previewModel;
  @override
  bool get isLoading;
  @override
  Option<Either<PortfolioFailure, Unit>> get convertFailureOrSuccessOption;
  @override
  List<Coin> get allCoins;
  @override
  List<Coin> get portfolio;
  @override
  bool get fromIsFocus;
  @override
  bool get invalidConversion;
  @override
  @JsonKey(ignore: true)
  _$ConvertCoinStateCopyWith<_ConvertCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}
