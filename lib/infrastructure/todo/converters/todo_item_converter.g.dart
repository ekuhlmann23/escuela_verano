// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit-dynamic

part of 'todo_item_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoItemConverter _$TodoItemConverterFromJson(Map<String, dynamic> json) {
  return TodoItemConverter(
    body: json['body'] as String,
    completed: json['completed'] as bool,
  );
}

Map<String, dynamic> _$TodoItemConverterToJson(TodoItemConverter instance) =>
    <String, dynamic>{
      'body': instance.body,
      'completed': instance.completed,
    };
