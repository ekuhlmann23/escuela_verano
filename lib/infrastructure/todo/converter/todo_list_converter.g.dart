// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoListConverter _$TodoListConverterFromJson(Map<String, dynamic> json) {
  return TodoListConverter(
    id: json['id'] as String,
    title: json['title'] as String,
    items: (json['items'] as List<dynamic>)
        .map((e) => ListItemConverter.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TodoListConverterToJson(TodoListConverter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
