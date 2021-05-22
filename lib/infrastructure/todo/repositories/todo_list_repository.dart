import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/repositories/i_todo_list_repository.dart';
import 'package:escuela_verano/infrastructure/core/cloud_firestore_data_source.dart';
import 'package:escuela_verano/infrastructure/todo/converters/todo_list_converter.dart';

class TodoListRepository implements ITodoListRepository {
  final CollectionReference<TodoList> _todoListCollectionRef;

  TodoListRepository(CloudFirestoreDataSource cloudFirestoreDataSource)
      : _todoListCollectionRef = cloudFirestoreDataSource.instance
            .collection("todo_lists")
            .withConverter<TodoList>(
                fromFirestore: (doc, options) =>
                    TodoListConverter.fromDocument(doc).toDomain(),
                toFirestore: (todoList, options) =>
                    TodoListConverter.fromDomain(todoList).toJson());

  @override
  Future<List<TodoList>> getAll() async {
    final snapshots = await _todoListCollectionRef.get();
    return snapshots.docs.map((doc) => doc.data()).toList();
  }

  @override
  Future<TodoList?> getById(Id id) async {
    final snapshot = await _todoListCollectionRef.doc(id.value).get();
    return snapshot.data();
  }

  @override
  Future<void> delete(Id id) {
    return _todoListCollectionRef.doc(id.value).delete();
  }

  @override
  Future<void> set(TodoList todoList) {
    return _todoListCollectionRef.doc(todoList.id.value).set(todoList);
  }

  @override
  Stream<List<TodoList>> getAllStream() {
    return _todoListCollectionRef
        .snapshots()
        .map((snapshots) => snapshots.docs.map((doc) => doc.data()).toList());
  }
}
