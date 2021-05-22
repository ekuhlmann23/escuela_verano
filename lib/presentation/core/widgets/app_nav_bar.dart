import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';

enum NavBarPages { home, counter, todo }

class AppNavBar {
  static BottomNavigationBar navBar(BuildContext context, int currentIndex) =>
      BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Todo lists')
        ],
        onTap: (index) {
          PageRouteInfo<dynamic> route = HomeRoute();

          if (index == NavBarPages.home.index) {
            route = HomeRoute();
          } else if (index == NavBarPages.counter.index) {
            route = CounterRoute();
          } else if (index == NavBarPages.todo.index) {
            route = TodoListRoute();
          }

          AutoRouter.of(context).replaceAll([route]);
        },
      );
}
