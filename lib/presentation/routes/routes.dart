import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/presentation/core/pages/home_page.dart';
import 'package:escuela_verano/presentation/counter/pages/counter_page.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_add_page.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_edit_page.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: CounterPage),
    AutoRoute(page: TodoListPage),
    AutoRoute(page: TodoAddPage),
    AutoRoute(page: TodoEditPage),
  ],
)
class $AppRouter {
}