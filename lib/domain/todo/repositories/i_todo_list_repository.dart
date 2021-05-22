import 'package:escuela_verano/domain/todo/entities/todo_list.dart';

abstract class ITodoListRepository {
  Future<List<TodoList>> getAll();
  Stream<List<TodoList>> getAllStream();
}
