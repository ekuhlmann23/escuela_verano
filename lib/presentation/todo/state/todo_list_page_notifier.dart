import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_description.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_item.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_title.dart';
import 'package:escuela_verano/presentation/todo/state/todo_list_page_state.dart';
import 'package:riverpod/riverpod.dart';

class TodoListPageNotifier extends StateNotifier<TodoListPageState> {
  TodoListPageNotifier() : super(TodoListPageState.loading()) {
    loadData();
  }

  void loadData() async {
    state = TodoListPageState.loading();
    await Future.delayed(Duration(seconds: 2), () {
      state = TodoListPageState.data(_lists);
    });
  }
}

final List<TodoList> _lists = [
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
