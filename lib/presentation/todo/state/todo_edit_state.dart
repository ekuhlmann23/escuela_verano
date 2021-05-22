import 'package:escuela_verano/application/todo/use_cases/i_todo_use_case.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_edit_state.freezed.dart';

extension Valdator on TodoEditState {
  bool validate() => maybeMap(
        data: (data) =>
            ListName.tryCreate(data.listName).isRight() &&
            (data.itemStates.isEmpty ||
                data.itemStates
                    .map((itemState) => itemState.validate())
                    .reduce((value, element) => value && element)),
        orElse: () => false,
      );
}

extension ValidatorItem on TodoItemState {
  bool validate() => ItemBody.tryCreate(bodyText).isRight();
}

@freezed
class TodoEditState with _$TodoEditState {
  const factory TodoEditState.loading() = _Loading;
  const factory TodoEditState.data(
      {required TodoList todoList,
      required String? listName,
      required List<TodoItemState> itemStates}) = DataState;
  const factory TodoEditState.error([String? friendlyMessage]) = _Error;
  const factory TodoEditState.done() = _Done;
}

@freezed
class TodoItemState with _$TodoItemState {
  const factory TodoItemState(
      {required String? bodyText, required bool completed}) = _TodoItemState;
}

class TodoEditNotifier extends StateNotifier<TodoEditState> {
  final ITodoUseCase _todoUseCase;

  TodoEditNotifier(this._todoUseCase) : super(TodoEditState.loading());

  void loadData(Id id) async {
    state = TodoEditState.loading();
    try {
      final todoList = await _todoUseCase.getTodoListById(id.value);
      if (todoList != null) {
        state = TodoEditState.data(
            todoList: todoList,
            listName: todoList.name.name,
            itemStates: todoList.items
                .map((item) => TodoItemState(
                    bodyText: item.body.bodyText, completed: item.completed))
                .toList());
      } else {
        state = TodoEditState.error('The requested list has been deleted.');
      }
    } catch (e) {
      state = TodoEditState.error();
    }
  }

  void changeListName(String listName) {
    state.maybeMap(
      data: (d) => state = d.copyWith(listName: listName),
      orElse: () {},
    );
  }

  void changeItemBodyText(int index, String? bodyText) {
    state.maybeMap(
      data: (d) {
        final itemStates = d.itemStates;
        itemStates[index] = itemStates[index].copyWith(bodyText: bodyText);
        state = d.copyWith(itemStates: itemStates);
      },
      orElse: () {},
    );
  }

  void changeItemCompleted(int index, bool completed) {
    state.maybeMap(
      data: (d) {
        final itemStates = d.itemStates;
        itemStates[index] = itemStates[index].copyWith(completed: completed);
        state = d.copyWith(itemStates: itemStates);
      },
      orElse: () {},
    );
  }

  void addItem() {
    state.maybeMap(
      data: (data) {
        final itemStates = data.itemStates;
        itemStates.add(TodoItemState(bodyText: null, completed: false));
        state = data.copyWith(itemStates: itemStates);
      },
      orElse: () {},
    );
  }

  void removeItem(int index) {
    state.maybeMap(
      data: (data) {
        final itemStates = data.itemStates;
        itemStates.removeAt(index);
        state = data.copyWith(itemStates: itemStates);
      },
      orElse: () {},
    );
  }

  void save() async {
    await state.maybeMap(
      data: (data) async {
        try {
          state = TodoEditState.loading();
          final modifiedTodoList = _applyValidChanges(data);
          await _todoUseCase.saveTodoList(modifiedTodoList);
          state = TodoEditState.done();
        } catch (e) {
          state = TodoEditState.error(
              'Something went wrong when saving your todo list. Please try again later.');
        }
      },
      orElse: () {},
    );
  }

  void delete() async {
    await state.maybeMap(
      data: (data) async {
        try {
          state = TodoEditState.loading();
          await _todoUseCase.deleteTodoList(data.todoList.id.value);
          state = TodoEditState.done();
        } catch (e) {
          state = TodoEditState.error(
              'Something went wrong while trying to delete your list.');
        }
      },
      orElse: () {},
    );
  }

  TodoList _applyValidChanges(DataState state) {
    final todoList = state.todoList;

    // set listName
    _todoUseCase.changeListName(todoList, state.listName);

    // set todo list items
    _todoUseCase.clearTodoListItems(todoList);
    final itemStates = state.itemStates;
    itemStates.forEach((itemState) => _todoUseCase.addItem(
        todoList, itemState.bodyText, itemState.completed));

    return todoList;
  }
}
