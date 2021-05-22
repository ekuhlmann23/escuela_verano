import 'package:escuela_verano/presentation/core/widgets/app_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum NavBar { home, counter, todo }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        child: Center(
          child: Text(
            'Escuela de verano',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: AppNavBar.navBar(context, NavBarPages.home.index),
    );
  }
}
