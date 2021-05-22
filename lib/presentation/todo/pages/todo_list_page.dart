import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_description.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_item.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  List<TodoList> _lists = [
    TodoList(
        id: Id.tryCreate('76219e42-3abc-433f-8660-6cc09ec7a56a')
            .fold((l) => throw Exception(), (id) => id),
        title: ListTitle.tryCreate('My list')
            .fold((l) => throw Exception, (title) => title),
        items: [
          ListItem(
              description: ItemDescription.tryCreate('a description')
                  .fold((l) => throw Exception, (desc) => desc),
              completed: true),
        ]),
    TodoList(
        id: Id.tryCreate('5006f223-c1ba-42c8-b375-5e71e961ac54')
            .fold((l) => throw Exception(), (id) => id),
        title: ListTitle.tryCreate('My list 2')
            .fold((l) => throw Exception, (title) => title),
        items: [
          ListItem(
              description: ItemDescription.tryCreate('no description')
                  .fold((l) => throw Exception, (desc) => desc),
              completed: true),
        ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo lists')),
      body: Container(
        child: Center(
          child: _TodoListView(items: _lists),
        ),
      ),
      floatingActionButton: _AddListButton(),
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
