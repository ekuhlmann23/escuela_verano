import 'package:escuela_verano/application/core/exceptions/use_case_exception.dart';
import 'package:escuela_verano/application/todo/use_cases/i_todo_use_case.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/repositories/i_todo_list_repository.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:escuela_verano/domain/todo/value_objects/todo_item.dart';

class TodoUseCase implements ITodoUseCase {
  final ITodoListRepository _todoListRepository;

  TodoUseCase(this._todoListRepository);

  @override
  void addItem(TodoList todoList, String? bodyText, bool completed) {
    final bodyResult = ItemBody.tryCreate(bodyText);
    final body = bodyResult.fold(
        (l) => throw UseCaseException('Validation error.'), (r) => r);

    final todoItem = TodoItem(body: body, completed: completed);

    todoList.addTodoItem(todoItem);
  }

  @override
  void changeItemBody(TodoList todoList, int index, String? bodyText) {
    final bodyResult = ItemBody.tryCreate(bodyText);
    final body = bodyResult.fold(
        (l) => throw UseCaseException('Validation error.'), (r) => r);

    todoList.items.elementAt(index).setBody(body);
  }

  @override
  void changeListName(TodoList todoList, String? listName) {
    final nameResult = ListName.tryCreate(listName);
    final name = nameResult.fold(
        (l) => throw UseCaseException('Validation error.'), (r) => r);
    todoList.setListName(name);
  }

  @override
  Future<TodoList> createTodoList(String? listName) async {
    final nameResult = ListName.tryCreate(listName);
    final name = nameResult.fold(
        (l) => throw UseCaseException('Validation error.'), (r) => r);

    final todoList =
        TodoList(id: Id.generate(), name: name, items: List.empty());

    await saveTodoList(todoList);

    return todoList;
  }

  @override
  Future<void> deleteTodoList(String? id) {
    final idResult = Id.tryCreate(id);
    final uniqueId = idResult.fold(
        (l) => throw UseCaseException('Validation error.'), (r) => r);

    return _todoListRepository.delete(uniqueId);
  }

  @override
  Future<List<TodoList>> getTodoLists() {
    return _todoListRepository.getAll();
  }

  @override
  Stream<List<TodoList>> getTodoListsStream() {
    return _todoListRepository.getAllStream();
  }

  @override
  Future<TodoList?> getTodoListById(String? id) {
    final idResult = Id.tryCreate(id);
    final uniqueId = idResult.fold(
        (l) => throw UseCaseException('Validation error.'), (r) => r);

    return _todoListRepository.getById(uniqueId);
  }

  @override
  void removeItem(TodoList todoList, int index) {
    todoList.removeTodoItem(index);
  }

  @override
  Future<void> saveTodoList(TodoList todoList) {
    return _todoListRepository.set(todoList);
  }

  @override
  void toggleItemCompleted(TodoList todoList, int index) {
    todoList.toggleItemCompleted(index);
  }

  @override
  void clearTodoListItems(TodoList todoList) {
    todoList.clearItems();
  }
}
