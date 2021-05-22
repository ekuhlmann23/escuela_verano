import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/presentation/todo/routes.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Taller escuela de verano')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenidos al taller!',
                style: TextStyle(fontSize: 28, color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text('22 de mayo - 2021'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).navigate(TodoListRoute());
                },
                child: Text('Todo lists'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
