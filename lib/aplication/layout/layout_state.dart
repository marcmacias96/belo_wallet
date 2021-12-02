part of 'layout_notifier.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState({
    required int index,
  }) = _LayoutState;

  factory LayoutState.initial() => const LayoutState(index: 0);
}
