// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinTearOff {
  const _$CoinTearOff();

  _Coin call(
      {required String id,
      required String name,
      required String symbol,
      required String image,
      required double currentPrice,
      required double priceChange,
      double? balance,
      double? valueInUsd}) {
    return _Coin(
      id: id,
      name: name,
      symbol: symbol,
      image: image,
      currentPrice: currentPrice,
      priceChange: priceChange,
      balance: balance,
      valueInUsd: valueInUsd,
    );
  }
}

/// @nodoc
const $Coin = _$CoinTearOff();

/// @nodoc
mixin _$Coin {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get priceChange => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  double? get valueInUsd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      double currentPrice,
      double priceChange,
      double? balance,
      double? valueInUsd});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res> implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  final Coin _value;
  // ignore: unused_field
  final $Res Function(Coin) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
    Object? balance = freezed,
    Object? valueInUsd = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      valueInUsd: valueInUsd == freezed
          ? _value.valueInUsd
          : valueInUsd // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CoinCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$CoinCopyWith(_Coin value, $Res Function(_Coin) then) =
      __$CoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String symbol,
      String image,
      double currentPrice,
      double priceChange,
      double? balance,
      double? valueInUsd});
}

/// @nodoc
class __$CoinCopyWithImpl<$Res> extends _$CoinCopyWithImpl<$Res>
    implements _$CoinCopyWith<$Res> {
  __$CoinCopyWithImpl(_Coin _value, $Res Function(_Coin) _then)
      : super(_value, (v) => _then(v as _Coin));

  @override
  _Coin get _value => super._value as _Coin;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
    Object? balance = freezed,
    Object? valueInUsd = freezed,
  }) {
    return _then(_Coin(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      valueInUsd: valueInUsd == freezed
          ? _value.valueInUsd
          : valueInUsd // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Coin implements _Coin {
  _$_Coin(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.image,
      required this.currentPrice,
      required this.priceChange,
      this.balance,
      this.valueInUsd});

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String image;
  @override
  final double currentPrice;
  @override
  final double priceChange;
  @override
  final double? balance;
  @override
  final double? valueInUsd;

  @override
  String toString() {
    return 'Coin(id: $id, name: $name, symbol: $symbol, image: $image, currentPrice: $currentPrice, priceChange: $priceChange, balance: $balance, valueInUsd: $valueInUsd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.valueInUsd, valueInUsd) ||
                other.valueInUsd == valueInUsd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, symbol, image,
      currentPrice, priceChange, balance, valueInUsd);

  @JsonKey(ignore: true)
  @override
  _$CoinCopyWith<_Coin> get copyWith =>
      __$CoinCopyWithImpl<_Coin>(this, _$identity);
}

abstract class _Coin implements Coin {
  factory _Coin(
      {required String id,
      required String name,
      required String symbol,
      required String image,
      required double currentPrice,
      required double priceChange,
      double? balance,
      double? valueInUsd}) = _$_Coin;

  @override
  String get id;
  @override
  String get name;
  @override
  String get symbol;
  @override
  String get image;
  @override
  double get currentPrice;
  @override
  double get priceChange;
  @override
  double? get balance;
  @override
  double? get valueInUsd;
  @override
  @JsonKey(ignore: true)
  _$CoinCopyWith<_Coin> get copyWith => throw _privateConstructorUsedError;
}
