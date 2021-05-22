import 'package:escuela_verano/domain/todo/entities/todo_list.dart';

abstract class ITodoUseCase {
  Future<List<TodoList>> getAllTodoLists();
  Stream<List<TodoList>> allTodoListsStream();
}
