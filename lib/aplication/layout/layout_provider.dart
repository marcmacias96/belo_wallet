import 'package:flutter_riverpod/flutter_riverpod.dart';
import './layout_notifier.dart';

final layoutNotifierProvider =
    StateNotifierProvider.autoDispose<LayoutNotifier, LayoutState>(
        (ref) => LayoutNotifier());
