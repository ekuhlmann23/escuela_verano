import 'package:escuela_verano/application/todo/use_cases/i_todo_use_case.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_add_state.freezed.dart';

extension Validator on TodoAddState {
  bool validate() => maybeWhen(
        form: (listName) => ListName.tryCreate(listName).isRight(),
        orElse: () => false,
      );
}

@freezed
class TodoAddState with _$TodoAddState {
  const factory TodoAddState.form({required String? listName}) = _Form;
  const factory TodoAddState.loading() = _Loading;
  const factory TodoAddState.error() = _Error;
  const factory TodoAddState.done() = _Done;
}

class TodoAddNotifier extends StateNotifier<TodoAddState> {
  final ITodoUseCase _useCase;

  TodoAddNotifier(this._useCase) : super(TodoAddState.form(listName: null));

  void changeListName(String? listName) {
    state.maybeMap(
        form: (form) => state = form.copyWith(listName: listName),
        orElse: () {});
  }

  void createList() async {
    await state.maybeMap(
      form: (form) async {
        try {
          state = TodoAddState.loading();
          await _useCase.createTodoList(form.listName);
          state = TodoAddState.done();
        } catch (e) {
          state = TodoAddState.error();
        }
      },
      orElse: () {},
    );
  }
}
