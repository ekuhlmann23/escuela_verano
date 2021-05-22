import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/entities/todo_list.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:escuela_verano/domain/todo/value_objects/todo_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Todo list clears items', () {
    // arrange
    final id = Id.createOrThrow('f4402a84-615e-44cf-bca9-e13b254a44f4');
    final listName = ListName.createOrThrow('My list');
    final listItems = [
      TodoItem(body: ItemBody.createOrThrow('First item'), completed: true),
      TodoItem(body: ItemBody.createOrThrow('Second item'), completed: false)
    ];
    final list = TodoList(
      id: id,
      items: listItems,
      name: listName,
    );

    // act
    list.clearItems();

    // assert
    expect(list.items.isEmpty, true);
  });

  test('List removes Todo item', () {
    // arrange
    final id = Id.createOrThrow('f4402a84-615e-44cf-bca9-e13b254a44f4');
    final listName = ListName.createOrThrow('My list');
    final listItems = [
      TodoItem(body: ItemBody.createOrThrow('First item'), completed: true),
      TodoItem(body: ItemBody.createOrThrow('Second item'), completed: false)
    ];
    final list = TodoList(
      id: id,
      items: listItems,
      name: listName,
    );

    // verify count has 2 items
    expect(list.items.length, 2);

    // act
    list.removeTodoItem(1);

    // assert
    expect(list.items.length, 1);
  });
}
