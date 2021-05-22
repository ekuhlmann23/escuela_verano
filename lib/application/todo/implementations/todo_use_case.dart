import 'package:escuela_verano/application/todo/i_todo_use_case.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/repositories/i_todo_list_repository.dart';

class TodoUseCase implements ITodoUseCase {
  final ITodoListRepository _todoListRepository;

  TodoUseCase(this._todoListRepository);

  @override
  Future<List<TodoList>> getAllTodoLists() {
    return _todoListRepository.getAll();
  }

  @override
  Stream<List<TodoList>> allTodoListsStream() {
    return _todoListRepository.getAllStream();
  }
}
