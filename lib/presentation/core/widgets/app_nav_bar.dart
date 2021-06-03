import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:escuela_verano/presentation/core/state/navigation_state.dart';
import 'package:escuela_verano/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppNavBar extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(navigationControllerProvider);
    return BottomNavigationBar(
      currentIndex: state.index,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todo lists')
      ],
      onTap: (index) {
        late final NavigationState route;

        if (index == NavigationState.home.index) {
          route = NavigationState.home;
        } else if (index == NavigationState.counter.index) {
          route = NavigationState.counter;
        } else if (index == NavigationState.todo.index) {
          route = NavigationState.todo;
        }

        final navigationController =
            context.read(navigationControllerProvider.notifier);
        navigationController.navigate(route);
      },
    );
  }
}
