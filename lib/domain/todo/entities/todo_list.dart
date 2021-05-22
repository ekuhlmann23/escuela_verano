import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/todo/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_item.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_title.dart';

class TodoList extends Equatable {
  final Id id;
  final ListTitle title;
  final List<ListItem> items;

  TodoList({required this.id, required this.title, required this.items});

  @override
  List<Object?> get props => [id];
}
