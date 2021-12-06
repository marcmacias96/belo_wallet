// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InsufficientBalance<T> insufficientBalance<T>({required double failedValue}) {
    return InsufficientBalance<T>(
      failedValue: failedValue,
    );
  }

  EqualsCoins<T> equalsCoins<T>({required String failedValue}) {
    return EqualsCoins<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double failedValue) insufficientBalance,
    required TResult Function(String failedValue) equalsCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double failedValue)? insufficientBalance,
    TResult Function(String failedValue)? equalsCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double failedValue)? insufficientBalance,
    TResult Function(String failedValue)? equalsCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientBalance<T> value) insufficientBalance,
    required TResult Function(EqualsCoins<T> value) equalsCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InsufficientBalance<T> value)? insufficientBalance,
    TResult Function(EqualsCoins<T> value)? equalsCoins,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientBalance<T> value)? insufficientBalance,
    TResult Function(EqualsCoins<T> value)? equalsCoins,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InsufficientBalanceCopyWith<T, $Res> {
  factory $InsufficientBalanceCopyWith(InsufficientBalance<T> value,
          $Res Function(InsufficientBalance<T>) then) =
      _$InsufficientBalanceCopyWithImpl<T, $Res>;
  $Res call({double failedValue});
}

/// @nodoc
class _$InsufficientBalanceCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InsufficientBalanceCopyWith<T, $Res> {
  _$InsufficientBalanceCopyWithImpl(InsufficientBalance<T> _value,
      $Res Function(InsufficientBalance<T>) _then)
      : super(_value, (v) => _then(v as InsufficientBalance<T>));

  @override
  InsufficientBalance<T> get _value => super._value as InsufficientBalance<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InsufficientBalance<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InsufficientBalance<T> implements InsufficientBalance<T> {
  const _$InsufficientBalance({required this.failedValue});

  @override
  final double failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.insufficientBalance(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsufficientBalance<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  $InsufficientBalanceCopyWith<T, InsufficientBalance<T>> get copyWith =>
      _$InsufficientBalanceCopyWithImpl<T, InsufficientBalance<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double failedValue) insufficientBalance,
    required TResult Function(String failedValue) equalsCoins,
  }) {
    return insufficientBalance(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double failedValue)? insufficientBalance,
    TResult Function(String failedValue)? equalsCoins,
  }) {
    return insufficientBalance?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double failedValue)? insufficientBalance,
    TResult Function(String failedValue)? equalsCoins,
    required TResult orElse(),
  }) {
    if (insufficientBalance != null) {
      return insufficientBalance(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientBalance<T> value) insufficientBalance,
    required TResult Function(EqualsCoins<T> value) equalsCoins,
  }) {
    return insufficientBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InsufficientBalance<T> value)? insufficientBalance,
    TResult Function(EqualsCoins<T> value)? equalsCoins,
  }) {
    return insufficientBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientBalance<T> value)? insufficientBalance,
    TResult Function(EqualsCoins<T> value)? equalsCoins,
    required TResult orElse(),
  }) {
    if (insufficientBalance != null) {
      return insufficientBalance(this);
    }
    return orElse();
  }
}

abstract class InsufficientBalance<T> implements ValueFailure<T> {
  const factory InsufficientBalance({required double failedValue}) =
      _$InsufficientBalance<T>;

  double get failedValue;
  @JsonKey(ignore: true)
  $InsufficientBalanceCopyWith<T, InsufficientBalance<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EqualsCoinsCopyWith<T, $Res> {
  factory $EqualsCoinsCopyWith(
          EqualsCoins<T> value, $Res Function(EqualsCoins<T>) then) =
      _$EqualsCoinsCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$EqualsCoinsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EqualsCoinsCopyWith<T, $Res> {
  _$EqualsCoinsCopyWithImpl(
      EqualsCoins<T> _value, $Res Function(EqualsCoins<T>) _then)
      : super(_value, (v) => _then(v as EqualsCoins<T>));

  @override
  EqualsCoins<T> get _value => super._value as EqualsCoins<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EqualsCoins<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EqualsCoins<T> implements EqualsCoins<T> {
  const _$EqualsCoins({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.equalsCoins(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EqualsCoins<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  $EqualsCoinsCopyWith<T, EqualsCoins<T>> get copyWith =>
      _$EqualsCoinsCopyWithImpl<T, EqualsCoins<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double failedValue) insufficientBalance,
    required TResult Function(String failedValue) equalsCoins,
  }) {
    return equalsCoins(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double failedValue)? insufficientBalance,
    TResult Function(String failedValue)? equalsCoins,
  }) {
    return equalsCoins?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double failedValue)? insufficientBalance,
    TResult Function(String failedValue)? equalsCoins,
    required TResult orElse(),
  }) {
    if (equalsCoins != null) {
      return equalsCoins(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsufficientBalance<T> value) insufficientBalance,
    required TResult Function(EqualsCoins<T> value) equalsCoins,
  }) {
    return equalsCoins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InsufficientBalance<T> value)? insufficientBalance,
    TResult Function(EqualsCoins<T> value)? equalsCoins,
  }) {
    return equalsCoins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsufficientBalance<T> value)? insufficientBalance,
    TResult Function(EqualsCoins<T> value)? equalsCoins,
    required TResult orElse(),
  }) {
    if (equalsCoins != null) {
      return equalsCoins(this);
    }
    return orElse();
  }
}

abstract class EqualsCoins<T> implements ValueFailure<T> {
  const factory EqualsCoins({required String failedValue}) = _$EqualsCoins<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $EqualsCoinsCopyWith<T, EqualsCoins<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
