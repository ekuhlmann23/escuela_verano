// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListItemConverter _$ListItemConverterFromJson(Map<String, dynamic> json) {
  return ListItemConverter(
    description: json['description'] as String,
    completed: json['completed'] as bool,
  );
}

Map<String, dynamic> _$ListItemConverterToJson(ListItemConverter instance) =>
    <String, dynamic>{
      'description': instance.description,
      'completed': instance.completed,
    };
