// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'layout_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LayoutStateTearOff {
  const _$LayoutStateTearOff();

  _LayoutState call({required int index, required PageController controller}) {
    return _LayoutState(
      index: index,
      controller: controller,
    );
  }
}

/// @nodoc
const $LayoutState = _$LayoutStateTearOff();

/// @nodoc
mixin _$LayoutState {
  int get index => throw _privateConstructorUsedError;
  PageController get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LayoutStateCopyWith<LayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutStateCopyWith<$Res> {
  factory $LayoutStateCopyWith(
          LayoutState value, $Res Function(LayoutState) then) =
      _$LayoutStateCopyWithImpl<$Res>;
  $Res call({int index, PageController controller});
}

/// @nodoc
class _$LayoutStateCopyWithImpl<$Res> implements $LayoutStateCopyWith<$Res> {
  _$LayoutStateCopyWithImpl(this._value, this._then);

  final LayoutState _value;
  // ignore: unused_field
  final $Res Function(LayoutState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
abstract class _$LayoutStateCopyWith<$Res>
    implements $LayoutStateCopyWith<$Res> {
  factory _$LayoutStateCopyWith(
          _LayoutState value, $Res Function(_LayoutState) then) =
      __$LayoutStateCopyWithImpl<$Res>;
  @override
  $Res call({int index, PageController controller});
}

/// @nodoc
class __$LayoutStateCopyWithImpl<$Res> extends _$LayoutStateCopyWithImpl<$Res>
    implements _$LayoutStateCopyWith<$Res> {
  __$LayoutStateCopyWithImpl(
      _LayoutState _value, $Res Function(_LayoutState) _then)
      : super(_value, (v) => _then(v as _LayoutState));

  @override
  _LayoutState get _value => super._value as _LayoutState;

  @override
  $Res call({
    Object? index = freezed,
    Object? controller = freezed,
  }) {
    return _then(_LayoutState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc

class _$_LayoutState implements _LayoutState {
  const _$_LayoutState({required this.index, required this.controller});

  @override
  final int index;
  @override
  final PageController controller;

  @override
  String toString() {
    return 'LayoutState(index: $index, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LayoutState &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, controller);

  @JsonKey(ignore: true)
  @override
  _$LayoutStateCopyWith<_LayoutState> get copyWith =>
      __$LayoutStateCopyWithImpl<_LayoutState>(this, _$identity);
}

abstract class _LayoutState implements LayoutState {
  const factory _LayoutState(
      {required int index,
      required PageController controller}) = _$_LayoutState;

  @override
  int get index;
  @override
  PageController get controller;
  @override
  @JsonKey(ignore: true)
  _$LayoutStateCopyWith<_LayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
