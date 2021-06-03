import 'dart:async';

import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/application/todo/use_cases/i_todo_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_state.freezed.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState.loading() = Loading;
  const factory TodoListState.data(List<TodoList> todoLists) = Data;
  const factory TodoListState.error([String? friendlyErrorMessage]) = Error;
}

class TodoListNotifier extends StateNotifier<TodoListState> {
  final ITodoUseCase _useCase;
  late final StreamSubscription _streamSubscription;

  TodoListNotifier(this._useCase) : super(TodoListState.loading()) {
    _streamSubscription = _useCase.getTodoListsStream().listen((updatedData) {
      state.maybeWhen(
          data: (d) {
            state = TodoListState.loading();
            Future.delayed(Duration(seconds: 1),
                () => state = TodoListState.data(updatedData));
          },
          orElse: () {});
    });

    loadData();
  }

  void loadData() async {
    state = TodoListState.loading();
    try {
      final lists = await _useCase.getTodoLists();
      state = TodoListState.data(lists);
    } catch (e) {
      state = TodoListState.error('Failed to load todo lists.');
    }
  }

  @override
  void dispose() async {
    await _streamSubscription.cancel();
    super.dispose();
  }
}
