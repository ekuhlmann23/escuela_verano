import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/presentation/todo/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo lists')),
      body: Container(
        child: Center(
          child: _States(),
        ),
      ),
      floatingActionButton: _AddListButton(),
    );
  }
}

class _States extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(todoListPageNotifierProvider);
    return state.map(
      loading: (_) => CircularProgressIndicator(),
      data: (data) => _TodoListView(items: data.items),
      error: (e) => Text(
        e.friendlyErrorMessage ?? 'Something went wrong :(',
        style: TextStyle(
          color: Colors.red,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _TodoListView extends StatelessWidget {
  final List<TodoList> items;

  const _TodoListView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list_alt),
            title: Text(items[index].title.value),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

class _AddListButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.add),
    );
  }
}
