import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/entities/aggregate_root.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:escuela_verano/domain/todo/value_objects/todo_item.dart';

class TodoList extends AggregateRoot with EquatableMixin {
  ListName name;
  final List<TodoItem> _items;

  TodoList({required Id id, required this.name, required List<TodoItem> items})
      : _items = items.toList(),
        super(id);

  List<TodoItem> get items => _items.toList();

  void setListName(ListName name) {
    this.name = name;
  }

  void addTodoItem(TodoItem item) {
    _items.add(item);
  }

  void removeTodoItem(int index) {
    _items.removeAt(index);
  }

  void toggleItemCompleted(int index) {
    _items[index].toggleCompleted();
  }

  void setItemBody(ItemBody itemBody, int index) {
    _items[index].setBody(itemBody);
  }

  List<TodoItem> filterCompleted() {
    return _items.where((item) => item.completed).toList();
  }

  void clearItems() {
    _items.clear();
  }

  void setItems(List<TodoItem> items) {
    _items.clear();
    _items.addAll(items);
  }

  @override
  List<Object?> get props => [id];
}
