import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_title.dart';
import 'package:escuela_verano/infrastructure/todo/converter/list_item_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_converter.g.dart';

@JsonSerializable(explicitToJson: true)
class TodoListConverter {
  final String id;
  final String title;
  final List<ListItemConverter> items;

  TodoListConverter(
      {required this.id, required this.title, required this.items});
  factory TodoListConverter.fromJson(Map<String, dynamic> json) =>
      _$TodoListConverterFromJson(json);
  factory TodoListConverter.fromDomain(TodoList todoList) => TodoListConverter(
        id: todoList.id.value,
        title: todoList.title.value,
        items: todoList.items
            .map((listItem) => ListItemConverter.fromDomain(listItem))
            .toList(),
      );

  Map<String, dynamic> toJson() => _$TodoListConverterToJson(this);
  TodoList toDomain() => TodoList(
        id: Id.createOrThrow(id),
        title: ListTitle.createOrThrow(title),
        items: items.map((itemConverter) => itemConverter.toDomain()).toList(),
      );
}
