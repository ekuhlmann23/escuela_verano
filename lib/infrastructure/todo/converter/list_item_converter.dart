import 'package:escuela_verano/domain/todo/value_objects/item_description.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_item_converter.g.dart';

@JsonSerializable()
class ListItemConverter {
  final String description;
  final bool completed;

  ListItemConverter({required this.description, required this.completed});
  factory ListItemConverter.fromJson(Map<String, dynamic> json) =>
      _$ListItemConverterFromJson(json);
  factory ListItemConverter.fromDomain(ListItem listItem) => ListItemConverter(
        description: listItem.description.value,
        completed: listItem.completed,
      );

  Map<String, dynamic> toJson() => _$ListItemConverterToJson(this);
  ListItem toDomain() => ListItem(
      description: ItemDescription.createOrThrow(description),
      completed: completed);
}
