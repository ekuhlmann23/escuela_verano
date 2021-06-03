import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation_state.dart';

class NavigationController extends StateNotifier<NavigationState> {
  NavigationController() : super(NavigationState.home);

  void navigate(NavigationState next) {
    if (state != next) {
      state = next;
    }
  }
}
