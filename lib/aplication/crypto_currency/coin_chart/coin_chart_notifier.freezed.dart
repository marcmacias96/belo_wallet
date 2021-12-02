// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coin_chart_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinChartStateTearOff {
  const _$CoinChartStateTearOff();

  _LayoutState call(
      {required List<FlSpot> chart,
      required Coin coin,
      required bool isLoading,
      required bool hasErrors,
      required double min}) {
    return _LayoutState(
      chart: chart,
      coin: coin,
      isLoading: isLoading,
      hasErrors: hasErrors,
      min: min,
    );
  }
}

/// @nodoc
const $CoinChartState = _$CoinChartStateTearOff();

/// @nodoc
mixin _$CoinChartState {
  List<FlSpot> get chart => throw _privateConstructorUsedError;
  Coin get coin => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasErrors => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinChartStateCopyWith<CoinChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinChartStateCopyWith<$Res> {
  factory $CoinChartStateCopyWith(
          CoinChartState value, $Res Function(CoinChartState) then) =
      _$CoinChartStateCopyWithImpl<$Res>;
  $Res call(
      {List<FlSpot> chart,
      Coin coin,
      bool isLoading,
      bool hasErrors,
      double min});

  $CoinCopyWith<$Res> get coin;
}

/// @nodoc
class _$CoinChartStateCopyWithImpl<$Res>
    implements $CoinChartStateCopyWith<$Res> {
  _$CoinChartStateCopyWithImpl(this._value, this._then);

  final CoinChartState _value;
  // ignore: unused_field
  final $Res Function(CoinChartState) _then;

  @override
  $Res call({
    Object? chart = freezed,
    Object? coin = freezed,
    Object? isLoading = freezed,
    Object? hasErrors = freezed,
    Object? min = freezed,
  }) {
    return _then(_value.copyWith(
      chart: chart == freezed
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as Coin,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrors: hasErrors == freezed
          ? _value.hasErrors
          : hasErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $CoinCopyWith<$Res> get coin {
    return $CoinCopyWith<$Res>(_value.coin, (value) {
      return _then(_value.copyWith(coin: value));
    });
  }
}

/// @nodoc
abstract class _$LayoutStateCopyWith<$Res>
    implements $CoinChartStateCopyWith<$Res> {
  factory _$LayoutStateCopyWith(
          _LayoutState value, $Res Function(_LayoutState) then) =
      __$LayoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<FlSpot> chart,
      Coin coin,
      bool isLoading,
      bool hasErrors,
      double min});

  @override
  $CoinCopyWith<$Res> get coin;
}

/// @nodoc
class __$LayoutStateCopyWithImpl<$Res>
    extends _$CoinChartStateCopyWithImpl<$Res>
    implements _$LayoutStateCopyWith<$Res> {
  __$LayoutStateCopyWithImpl(
      _LayoutState _value, $Res Function(_LayoutState) _then)
      : super(_value, (v) => _then(v as _LayoutState));

  @override
  _LayoutState get _value => super._value as _LayoutState;

  @override
  $Res call({
    Object? chart = freezed,
    Object? coin = freezed,
    Object? isLoading = freezed,
    Object? hasErrors = freezed,
    Object? min = freezed,
  }) {
    return _then(_LayoutState(
      chart: chart == freezed
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as List<FlSpot>,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as Coin,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasErrors: hasErrors == freezed
          ? _value.hasErrors
          : hasErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LayoutState implements _LayoutState {
  const _$_LayoutState(
      {required this.chart,
      required this.coin,
      required this.isLoading,
      required this.hasErrors,
      required this.min});

  @override
  final List<FlSpot> chart;
  @override
  final Coin coin;
  @override
  final bool isLoading;
  @override
  final bool hasErrors;
  @override
  final double min;

  @override
  String toString() {
    return 'CoinChartState(chart: $chart, coin: $coin, isLoading: $isLoading, hasErrors: $hasErrors, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LayoutState &&
            const DeepCollectionEquality().equals(other.chart, chart) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasErrors, hasErrors) ||
                other.hasErrors == hasErrors) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chart),
      coin,
      isLoading,
      hasErrors,
      min);

  @JsonKey(ignore: true)
  @override
  _$LayoutStateCopyWith<_LayoutState> get copyWith =>
      __$LayoutStateCopyWithImpl<_LayoutState>(this, _$identity);
}

abstract class _LayoutState implements CoinChartState {
  const factory _LayoutState(
      {required List<FlSpot> chart,
      required Coin coin,
      required bool isLoading,
      required bool hasErrors,
      required double min}) = _$_LayoutState;

  @override
  List<FlSpot> get chart;
  @override
  Coin get coin;
  @override
  bool get isLoading;
  @override
  bool get hasErrors;
  @override
  double get min;
  @override
  @JsonKey(ignore: true)
  _$LayoutStateCopyWith<_LayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
