// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletFailureTearOff {
  const _$WalletFailureTearOff();

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

  _ConvertFails convertFails(String message) {
    return _ConvertFails(
      message,
    );
  }
}

/// @nodoc
const $WalletFailure = _$WalletFailureTearOff();

/// @nodoc
mixin _$WalletFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeOut,
    required TResult Function(int statusCode, String message) networkFail,
    required TResult Function(String message) convertFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(NetWorkFail value) networkFail,
    required TResult Function(_ConvertFails value) convertFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletFailureCopyWith<$Res> {
  factory $WalletFailureCopyWith(
          WalletFailure value, $Res Function(WalletFailure) then) =
      _$WalletFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$WalletFailureCopyWithImpl<$Res>
    implements $WalletFailureCopyWith<$Res> {
  _$WalletFailureCopyWithImpl(this._value, this._then);

  final WalletFailure _value;
  // ignore: unused_field
  final $Res Function(WalletFailure) _then;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$WalletFailureCopyWithImpl<$Res>
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
    return 'WalletFailure.unexpected()';
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
    required TResult Function(String message) convertFails,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
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
    required TResult Function(_ConvertFails value) convertFails,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements WalletFailure {
  factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class $TimeOutCopyWith<$Res> {
  factory $TimeOutCopyWith(TimeOut value, $Res Function(TimeOut) then) =
      _$TimeOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimeOutCopyWithImpl<$Res> extends _$WalletFailureCopyWithImpl<$Res>
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
    return 'WalletFailure.timeOut()';
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
    required TResult Function(String message) convertFails,
  }) {
    return timeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
  }) {
    return timeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
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
    required TResult Function(_ConvertFails value) convertFails,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class TimeOut implements WalletFailure {
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
class _$NetWorkFailCopyWithImpl<$Res> extends _$WalletFailureCopyWithImpl<$Res>
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
    return 'WalletFailure.networkFail(statusCode: $statusCode, message: $message)';
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
    required TResult Function(String message) convertFails,
  }) {
    return networkFail(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
  }) {
    return networkFail?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
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
    required TResult Function(_ConvertFails value) convertFails,
  }) {
    return networkFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
  }) {
    return networkFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
    required TResult orElse(),
  }) {
    if (networkFail != null) {
      return networkFail(this);
    }
    return orElse();
  }
}

abstract class NetWorkFail implements WalletFailure {
  factory NetWorkFail(int statusCode, String message) = _$NetWorkFail;

  int get statusCode;
  String get message;
  @JsonKey(ignore: true)
  $NetWorkFailCopyWith<NetWorkFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConvertFailsCopyWith<$Res> {
  factory _$ConvertFailsCopyWith(
          _ConvertFails value, $Res Function(_ConvertFails) then) =
      __$ConvertFailsCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ConvertFailsCopyWithImpl<$Res>
    extends _$WalletFailureCopyWithImpl<$Res>
    implements _$ConvertFailsCopyWith<$Res> {
  __$ConvertFailsCopyWithImpl(
      _ConvertFails _value, $Res Function(_ConvertFails) _then)
      : super(_value, (v) => _then(v as _ConvertFails));

  @override
  _ConvertFails get _value => super._value as _ConvertFails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ConvertFails(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConvertFails implements _ConvertFails {
  _$_ConvertFails(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WalletFailure.convertFails(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConvertFails &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  _$ConvertFailsCopyWith<_ConvertFails> get copyWith =>
      __$ConvertFailsCopyWithImpl<_ConvertFails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() timeOut,
    required TResult Function(int statusCode, String message) networkFail,
    required TResult Function(String message) convertFails,
  }) {
    return convertFails(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
  }) {
    return convertFails?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? timeOut,
    TResult Function(int statusCode, String message)? networkFail,
    TResult Function(String message)? convertFails,
    required TResult orElse(),
  }) {
    if (convertFails != null) {
      return convertFails(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(TimeOut value) timeOut,
    required TResult Function(NetWorkFail value) networkFail,
    required TResult Function(_ConvertFails value) convertFails,
  }) {
    return convertFails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
  }) {
    return convertFails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(TimeOut value)? timeOut,
    TResult Function(NetWorkFail value)? networkFail,
    TResult Function(_ConvertFails value)? convertFails,
    required TResult orElse(),
  }) {
    if (convertFails != null) {
      return convertFails(this);
    }
    return orElse();
  }
}

abstract class _ConvertFails implements WalletFailure {
  factory _ConvertFails(String message) = _$_ConvertFails;

  String get message;
  @JsonKey(ignore: true)
  _$ConvertFailsCopyWith<_ConvertFails> get copyWith =>
      throw _privateConstructorUsedError;
}
