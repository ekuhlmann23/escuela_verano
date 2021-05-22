import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState.counting(int count) = _CountingCounterState;
  const factory CounterState.reset() = _ResetCounterState;
}

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState.counting(0));

  void increment() {
    state = CounterState.counting(
      state.when(
        counting: (count) => count + 1,
        reset: () => 0,
      ),
    );
  }

  void decrement() =>
    state = CounterState.counting(
      state.when(
        counting: (count) => count - 1,
        reset: () => 0,
      ),
    );

  void reset() => state = CounterState.reset();
}
