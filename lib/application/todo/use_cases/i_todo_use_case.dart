import 'package:escuela_verano/domain/todo/entities/todo_list.dart';

abstract class ITodoUseCase {
  Future<List<TodoList>> getTodoLists();
  Stream<List<TodoList>> getTodoListsStream();
  Future<TodoList?> getTodoListById(String? id);
  Future<void> saveTodoList(TodoList todoList);
  Future<TodoList> createTodoList(String? listName);
  Future<void> deleteTodoList(String? id);
  void changeListName(TodoList todoList, String? listName);
  void addItem(TodoList todoList, String? bodyText, bool completed);
  void removeItem(TodoList todoList, int index);
  void changeItemBody(TodoList todoList, int index, String? bodyText);
  void toggleItemCompleted(TodoList todoList, int index);
  void clearTodoListItems(TodoList todoList);
}
