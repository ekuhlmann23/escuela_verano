import 'package:escuela_verano/presentation/counter/state/counter_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterNotifier', () {
    test('Counter state notifier starts at 0', () {
      // act
      final _counterNotifier = CounterNotifier();

      // assert
      expect(_counterNotifier.debugState, CounterState.counting(0));
    });

    test('Counter state notifier increments', () {
      // arrange
      final _counterNotifier = CounterNotifier();

      // act
      _counterNotifier.increment();

      // assert
      expect(_counterNotifier.debugState, CounterState.counting(1));
    });

    test('Counter state notifier decrements', () {
      // arrange
      final _counterNotifier = CounterNotifier();

      // act
      _counterNotifier.decrement();

      // assert
      expect(_counterNotifier.debugState, CounterState.counting(-1));
    });

    test('Counter state notifier resets', () {
      // arrange
      final _counterNotifier = CounterNotifier();

      // act
      _counterNotifier.reset();

      // assert
      expect(_counterNotifier.debugState, CounterState.reset());
    });
  });
}
