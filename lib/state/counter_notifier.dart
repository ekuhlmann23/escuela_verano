import 'package:riverpod/riverpod.dart';

import 'counter_state.dart';

final counterNotifierProvider =
    StateNotifierProvider<CounterNotifier, CounterState>(
        (_) => CounterNotifier());

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState(0));

  void increment() => state = CounterState(state.count + 1);
}
