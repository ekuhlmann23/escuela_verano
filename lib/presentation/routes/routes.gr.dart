// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/core/value_objects/id.dart' as _i8;
import '../core/pages/home_page.dart' as _i3;
import '../counter/pages/counter_page.dart' as _i4;
import '../todo/pages/todo_add_page.dart' as _i6;
import '../todo/pages/todo_edit_page.dart' as _i7;
import '../todo/pages/todo_list_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    CounterRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.CounterPage();
        }),
    TodoListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.TodoListPage();
        }),
    TodoAddRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.TodoAddPage();
        }),
    TodoEditRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<TodoEditRouteArgs>();
          return _i7.TodoEditPage(key: args.key, todoListId: args.todoListId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(CounterRoute.name, path: '/counter-page'),
        _i1.RouteConfig(TodoListRoute.name, path: '/todo-list-page'),
        _i1.RouteConfig(TodoAddRoute.name, path: '/todo-add-page'),
        _i1.RouteConfig(TodoEditRoute.name, path: '/todo-edit-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class CounterRoute extends _i1.PageRouteInfo {
  const CounterRoute() : super(name, path: '/counter-page');

  static const String name = 'CounterRoute';
}

class TodoListRoute extends _i1.PageRouteInfo {
  const TodoListRoute() : super(name, path: '/todo-list-page');

  static const String name = 'TodoListRoute';
}

class TodoAddRoute extends _i1.PageRouteInfo {
  const TodoAddRoute() : super(name, path: '/todo-add-page');

  static const String name = 'TodoAddRoute';
}

class TodoEditRoute extends _i1.PageRouteInfo<TodoEditRouteArgs> {
  TodoEditRoute({_i2.Key? key, required _i8.Id todoListId})
      : super(name,
            path: '/todo-edit-page',
            args: TodoEditRouteArgs(key: key, todoListId: todoListId));

  static const String name = 'TodoEditRoute';
}

class TodoEditRouteArgs {
  const TodoEditRouteArgs({this.key, required this.todoListId});

  final _i2.Key? key;

  final _i8.Id todoListId;
}
