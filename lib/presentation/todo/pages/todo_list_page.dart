import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/presentation/providers.dart';
import 'package:escuela_verano/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo lists')),
      body: Container(
        child: Center(
          child: Consumer(
            builder: (context, watch, child) {
              final state = watch(todoListNotifierProvider);
              return state.map(
                loading: (l) => _Loading(),
                data: (d) => _Data(data: d.todoLists),
                error: (e) => _Error(errorMessage: e.friendlyErrorMessage),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          AutoRouter.of(context).navigate(TodoAddRoute());
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CircularProgressIndicator();
}

class _Error extends StatelessWidget {
  final String? errorMessage;

  const _Error({Key? key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage ?? "An unhandled error occured",
      style: TextStyle(color: Theme.of(context).errorColor),
    );
  }
}

class _Data extends StatelessWidget {
  final List<TodoList> data;

  const _Data({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index].name.name),
          onTap: () => AutoRouter.of(context)
              .navigate(TodoEditRoute(todoListId: data[index].id)),
        );
      },
    );
  }
}
