// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit-dynamic

part of 'todo_list_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoListConverter _$TodoListConverterFromJson(Map<String, dynamic> json) {
  return TodoListConverter(
    id: json['id'] as String,
    name: json['name'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) => TodoItemConverter.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TodoListConverterToJson(TodoListConverter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
