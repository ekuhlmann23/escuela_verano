import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/value_objects/value_object.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';

class TodoItem extends ValueObject with EquatableMixin {
  ItemBody body;
  bool completed;

  TodoItem({required this.body, required this.completed});

  void setBody(ItemBody body) {
    this.body = body;
  }

  void toggleCompleted() {
    completed = !completed;
  }

  @override
  List<Object?> get props => [body, completed];
}
