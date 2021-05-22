import 'package:escuela_verano/application/todo/i_todo_use_case.dart';
import 'package:escuela_verano/application/todo/implementations/todo_use_case.dart';
import 'package:escuela_verano/infrastructure/todo/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoUseCaseProvider = Provider<ITodoUseCase>(
    (ref) => TodoUseCase(ref.read(todoListRepositoryProvider)));
