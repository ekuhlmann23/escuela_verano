import 'package:escuela_verano/presentation/todo/pages/todo_list_page.dart';
import 'package:escuela_verano/presentation/todo/state/todo_list_page_notifier.dart';
import 'package:escuela_verano/presentation/todo/state/todo_list_page_state.dart';
import 'package:riverpod/riverpod.dart';

final todoListPageNotifierProvider =
    StateNotifierProvider.autoDispose<TodoListPageNotifier, TodoListPageState>(
        (ref) => TodoListPageNotifier());
