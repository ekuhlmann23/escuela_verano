import 'package:escuela_verano/application/providers.dart';
import 'package:escuela_verano/presentation/core/state/navigation_controller.dart';
import 'package:escuela_verano/presentation/core/state/navigation_state.dart';
import 'package:escuela_verano/presentation/counter/state/counter_state.dart';
import 'package:escuela_verano/presentation/todo/state/todo_add_state.dart';
import 'package:escuela_verano/presentation/todo/state/todo_edit_state.dart';
import 'package:escuela_verano/presentation/todo/state/todo_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Core
final navigationControllerProvider =
    StateNotifierProvider<NavigationController, NavigationState>(
        (ref) => NavigationController());

// Counter
final counterNotifierProvider =
    StateNotifierProvider<CounterNotifier, CounterState>(
        (ref) => CounterNotifier());

// Todo
final todoListNotifierProvider =
    StateNotifierProvider<TodoListNotifier, TodoListState>(
        (ref) => TodoListNotifier(ref.read(todoUseCaseProvider)));

final todoAddNotifierProvider =
    StateNotifierProvider.autoDispose<TodoAddNotifier, TodoAddState>(
        (ref) => TodoAddNotifier(ref.read(todoUseCaseProvider)));

final todoEditNotifierProvider =
    StateNotifierProvider.autoDispose<TodoEditNotifier, TodoEditState>(
        (ref) => TodoEditNotifier(ref.read(todoUseCaseProvider)));
