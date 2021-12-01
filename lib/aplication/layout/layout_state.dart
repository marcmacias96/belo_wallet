part of 'layout_notifier.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState({
    required int index,
    required PageController controller,
  }) = _LayoutState;

  factory LayoutState.initial() => LayoutState(
        index: 0,
        controller: PageController(),
      );
}
