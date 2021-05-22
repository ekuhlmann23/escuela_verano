import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';
import 'package:escuela_verano/domain/todo/value_objects/todo_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_converter.g.dart';

@JsonSerializable()
class TodoItemConverter {
  final String body;
  final bool completed;

  TodoItemConverter({required this.body, required this.completed});

  factory TodoItemConverter.fromJson(Map<String, dynamic> json) =>
      _$TodoItemConverterFromJson(json);

  factory TodoItemConverter.fromDocument(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TodoItemConverter.fromJson(data);
  }

  factory TodoItemConverter.fromDomain(TodoItem item) => TodoItemConverter(
        body: item.body.bodyText,
        completed: item.completed,
      );

  Map<String, dynamic> toJson() => _$TodoItemConverterToJson(this);

  TodoItem toDomain() => TodoItem(
      body: ItemBody.createOrThrow(body), completed: completed);
}
