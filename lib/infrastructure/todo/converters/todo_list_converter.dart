import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:escuela_verano/infrastructure/todo/converters/todo_item_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo_list_converter.g.dart';

@JsonSerializable(explicitToJson: true)
class TodoListConverter {
  final String id;
  final String name;
  final List<TodoItemConverter> items;

  TodoListConverter(
      {required this.id, required this.name, required this.items});

  factory TodoListConverter.fromJson(Map<String, dynamic> json) =>
      _$TodoListConverterFromJson(json);

  factory TodoListConverter.fromDocument(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() as Map<String, dynamic>;
    return TodoListConverter.fromJson(data);
  }

  factory TodoListConverter.fromDomain(TodoList list) => TodoListConverter(
      id: list.id.value,
      name: list.name.name,
      items: list.items
          .map((item) => TodoItemConverter.fromDomain(item))
          .toList());

  Map<String, dynamic> toJson() => _$TodoListConverterToJson(this);

  TodoList toDomain() => TodoList(
      id: Id.createOrThrow(id),
      name: ListName.createOrThrow(name),
      items: items.map((item) => item.toDomain()).toList());
}
