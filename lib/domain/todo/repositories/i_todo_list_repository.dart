import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';

abstract class ITodoListRepository {
  Future<List<TodoList>> getAll();
  Future<TodoList?> getById(Id id);
  Future<void> set(TodoList todoList);
  Future<void> delete(Id id);
  Stream<List<TodoList>> getAllStream();
}
