import 'package:escuela_verano/application/todo/use_cases/i_todo_use_case.dart';
import 'package:escuela_verano/infrastructure/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:escuela_verano/application/todo/implementations/todo_use_case.dart';

final todoUseCaseProvider =
    Provider<ITodoUseCase>((ref) => TodoUseCase(ref.read(todoListRepository)));
