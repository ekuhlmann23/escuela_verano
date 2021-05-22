import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/repositories/i_todo_list_repository.dart';
import 'package:escuela_verano/infrastructure/todo/converter/todo_list_converter.dart';

class TodoListRepository implements ITodoListRepository {
  final CollectionReference<TodoList> _todoListsCollection =
      FirebaseFirestore.instance.collection('todo_lists').withConverter(
          fromFirestore: (doc, options) =>
              TodoListConverter.fromJson(doc.data() as Map<String, dynamic>)
                  .toDomain(),
          toFirestore: (todoList, options) =>
              TodoListConverter.fromDomain(todoList).toJson());

  @override
  Future<List<TodoList>> getAll() async {
    return (await _todoListsCollection.get())
        .docs
        .map((doc) => doc.data())
        .toList();
  }

  @override
  Stream<List<TodoList>> getAllStream() {
    return _todoListsCollection
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }
}
