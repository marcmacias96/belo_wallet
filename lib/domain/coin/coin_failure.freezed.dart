// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coin_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinFailureTearOff {
  const _$CoinFailureTearOff();

  Unexpected unexpected() {
    return Unexpected();
  }

  TimeOut timeOut() {
    return TimeOut();
  }

  NetWorkFail networkFail(int statusCode, String message) {
    return NetWorkFail(
      statusCode,
      message,
    );
  }
}

/// @nodoc
const $CoinFailure = _$CoinFailureTearOff();

/// @nodoc
mixin _$CoinFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeOut,
    required TResult Function(int statusCode, String message) networkFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(NetWorkFail value) networkFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinFailureCopyWith<$Res> {
  factory $CoinFailureCopyWith(
          CoinFailure value, $Res Function(CoinFailure) then) =
      _$CoinFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinFailureCopyWithImpl<$Res> implements $CoinFailureCopyWith<$Res> {
  _$CoinFailureCopyWithImpl(this._value, this._then);

  final CoinFailure _value;
  // ignore: unused_field
  final $Res Function(CoinFailure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$CoinFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

/// @nodoc

class _$Unexpected implements Unexpected {
  _$Unexpected();

  @override
  String toString() {
    return 'CoinFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeOut,
    required TResult Function(int statusCode, String message) networkFail,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(NetWorkFail value) networkFail,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements CoinFailure {
  factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $TimeOutCopyWith<$Res> {
  factory $TimeOutCopyWith(TimeOut value, $Res Function(TimeOut) then) =
      _$TimeOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeOutCopyWithImpl<$Res> extends _$CoinFailureCopyWithImpl<$Res>
    implements $TimeOutCopyWith<$Res> {
  _$TimeOutCopyWithImpl(TimeOut _value, $Res Function(TimeOut) _then)
      : super(_value, (v) => _then(v as TimeOut));

  @override
  TimeOut get _value => super._value as TimeOut;
}

/// @nodoc

class _$TimeOut implements TimeOut {
  _$TimeOut();

  @override
  String toString() {
    return 'CoinFailure.timeOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeOut,
    required TResult Function(int statusCode, String message) networkFail,
  }) {
    return timeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
  }) {
    return timeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(NetWorkFail value) networkFail,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class TimeOut implements CoinFailure {
  factory TimeOut() = _$TimeOut;
}

/// @nodoc
abstract class $NetWorkFailCopyWith<$Res> {
  factory $NetWorkFailCopyWith(
          NetWorkFail value, $Res Function(NetWorkFail) then) =
      _$NetWorkFailCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$NetWorkFailCopyWithImpl<$Res> extends _$CoinFailureCopyWithImpl<$Res>
    implements $NetWorkFailCopyWith<$Res> {
  _$NetWorkFailCopyWithImpl(
      NetWorkFail _value, $Res Function(NetWorkFail) _then)
      : super(_value, (v) => _then(v as NetWorkFail));

  @override
  NetWorkFail get _value => super._value as NetWorkFail;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(NetWorkFail(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetWorkFail implements NetWorkFail {
  _$NetWorkFail(this.statusCode, this.message);

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'CoinFailure.networkFail(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetWorkFail &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  $NetWorkFailCopyWith<NetWorkFail> get copyWith =>
      _$NetWorkFailCopyWithImpl<NetWorkFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeOut,
    required TResult Function(int statusCode, String message) networkFail,
  }) {
    return networkFail(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
  }) {
    return networkFail?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    required TResult orElse(),
  }) {
    if (networkFail != null) {
      return networkFail(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(NetWorkFail value) networkFail,
  }) {
    return networkFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
  }) {
    return networkFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    required TResult orElse(),
  }) {
    if (networkFail != null) {
      return networkFail(this);
    }
    return orElse();
  }
}

abstract class NetWorkFail implements CoinFailure {
  factory NetWorkFail(int statusCode, String message) = _$NetWorkFail;

  int get statusCode;
  String get message;
  @JsonKey(ignore: true)
  $NetWorkFailCopyWith<NetWorkFail> get copyWith =>
      throw _privateConstructorUsedError;
}
