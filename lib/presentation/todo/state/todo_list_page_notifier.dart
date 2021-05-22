import 'package:escuela_verano/application/todo/i_todo_use_case.dart';
import 'package:escuela_verano/presentation/todo/state/todo_list_page_state.dart';
import 'package:riverpod/riverpod.dart';

class TodoListPageNotifier extends StateNotifier<TodoListPageState> {
  final ITodoUseCase _todoUseCase;

  TodoListPageNotifier(this._todoUseCase) : super(TodoListPageState.loading()) {
    loadData();
    _todoUseCase.allTodoListsStream().listen((lists) {
      state = TodoListPageState.data(lists);
    });
  }

  void loadData() async {
    state = TodoListPageState.loading();
    try {
      final lists = await _todoUseCase.getAllTodoLists();
      state = TodoListPageState.data(lists);
    } catch (e) {
      state = TodoListPageState.error();
    }
  }
}
