import 'package:auto_route/annotations.dart';
import 'package:escuela_verano/presentation/todo/pages/home_page.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: TodoListPage),
  ],
)
class $AppRouter {}
