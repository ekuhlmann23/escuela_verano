import 'package:escuela_verano/presentation/core/pages/home_page.dart';
import 'package:escuela_verano/presentation/core/state/navigation_state.dart';
import 'package:escuela_verano/presentation/core/widgets/app_nav_bar.dart';
import 'package:escuela_verano/presentation/counter/pages/counter_page.dart';
import 'package:escuela_verano/presentation/providers.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RootPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(navigationControllerProvider);

    late final Widget page;
    switch (state) {
      case NavigationState.home:
        page = HomePage();
        break;
      case NavigationState.counter:
        page = CounterPage();
        break;
      case NavigationState.todo:
        page = TodoListPage();
        break;
    }

    return Scaffold(
      bottomNavigationBar: AppNavBar(),
      body: page,
    );
  }
}
