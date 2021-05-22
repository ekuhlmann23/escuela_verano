import 'package:escuela_verano/domain/todo/repositories/i_todo_list_repository.dart';
import 'package:escuela_verano/infrastructure/todo/repositories/todo_list_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoListRepositoryProvider =
    Provider<ITodoListRepository>((ref) => TodoListRepository());
