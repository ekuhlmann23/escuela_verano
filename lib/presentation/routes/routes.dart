import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/presentation/core/pages/root_page.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_add_page.dart';
import 'package:escuela_verano/presentation/todo/pages/todo_edit_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: RootPage, initial: true),
    AutoRoute(page: TodoAddPage),
    AutoRoute(page: TodoEditPage),
  ],
)
class $AppRouter {}
