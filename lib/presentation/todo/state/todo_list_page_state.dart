import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_page_state.freezed.dart';

@Freezed()
class TodoListPageState with _$TodoListPageState {
  factory TodoListPageState.loading() = _Loading;
  factory TodoListPageState.data(List<TodoList> items) = _Data;
  factory TodoListPageState.error([String? friendlyErrorMessage]) = _Error;
}
