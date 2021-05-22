import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:escuela_verano/domain/todo/repositories/i_todo_list_repository.dart';
import 'package:escuela_verano/infrastructure/core/cloud_firestore_data_source.dart';
import 'package:escuela_verano/infrastructure/todo/repositories/todo_list_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cloudFirestoreProvider =
    Provider((ref) => CloudFirestoreDataSource(FirebaseFirestore.instance));

final todoListRepository = Provider<ITodoListRepository>(
    (ref) => TodoListRepository(ref.read(cloudFirestoreProvider)));
