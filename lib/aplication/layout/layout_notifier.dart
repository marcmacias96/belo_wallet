import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout_notifier.freezed.dart';
part 'layout_state.dart';

class LayoutNotifier extends StateNotifier<LayoutState> {
  LayoutNotifier() : super(LayoutState.initial());

  void setIndex(int index) {
    state = state.copyWith(
      index: index,
    );
  }
}
