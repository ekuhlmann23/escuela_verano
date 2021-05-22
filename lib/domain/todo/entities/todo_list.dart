import 'package:escuela_verano/domain/todo/value_objects/list_item.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_title.dart';

class TodoList {
  final ListTitle title;
  final List<ListItem> items;

  TodoList({required this.title, required this.items});
}
