// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_active.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoActiveTearOff {
  const _$CryptoActiveTearOff();

  _CryptoActive call({required double amount, required String symbol}) {
    return _CryptoActive(
      amount: amount,
      symbol: symbol,
    );
  }
}

/// @nodoc
const $CryptoActive = _$CryptoActiveTearOff();

/// @nodoc
mixin _$CryptoActive {
  double get amount => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoActiveCopyWith<CryptoActive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoActiveCopyWith<$Res> {
  factory $CryptoActiveCopyWith(
          CryptoActive value, $Res Function(CryptoActive) then) =
      _$CryptoActiveCopyWithImpl<$Res>;
  $Res call({double amount, String symbol});
}

/// @nodoc
class _$CryptoActiveCopyWithImpl<$Res> implements $CryptoActiveCopyWith<$Res> {
  _$CryptoActiveCopyWithImpl(this._value, this._then);

  final CryptoActive _value;
  // ignore: unused_field
  final $Res Function(CryptoActive) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CryptoActiveCopyWith<$Res>
    implements $CryptoActiveCopyWith<$Res> {
  factory _$CryptoActiveCopyWith(
          _CryptoActive value, $Res Function(_CryptoActive) then) =
      __$CryptoActiveCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String symbol});
}

/// @nodoc
class __$CryptoActiveCopyWithImpl<$Res> extends _$CryptoActiveCopyWithImpl<$Res>
    implements _$CryptoActiveCopyWith<$Res> {
  __$CryptoActiveCopyWithImpl(
      _CryptoActive _value, $Res Function(_CryptoActive) _then)
      : super(_value, (v) => _then(v as _CryptoActive));

  @override
  _CryptoActive get _value => super._value as _CryptoActive;

  @override
  $Res call({
    Object? amount = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_CryptoActive(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CryptoActive implements _CryptoActive {
  _$_CryptoActive({required this.amount, required this.symbol});

  @override
  final double amount;
  @override
  final String symbol;

  @override
  String toString() {
    return 'CryptoActive(amount: $amount, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CryptoActive &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, symbol);

  @JsonKey(ignore: true)
  @override
  _$CryptoActiveCopyWith<_CryptoActive> get copyWith =>
      __$CryptoActiveCopyWithImpl<_CryptoActive>(this, _$identity);
}

abstract class _CryptoActive implements CryptoActive {
  factory _CryptoActive({required double amount, required String symbol}) =
      _$_CryptoActive;

  @override
  double get amount;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$CryptoActiveCopyWith<_CryptoActive> get copyWith =>
      throw _privateConstructorUsedError;
}
