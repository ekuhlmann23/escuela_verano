import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:escuela_verano/presentation/providers.dart';
import 'package:escuela_verano/presentation/todo/state/todo_add_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a list'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _States(),
        ),
      ),
    );
  }
}

class _ListNameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(labelText: 'List name'),
      validator: (listName) {
        final result = ListName.tryCreate(listName);
        return result.fold(
            (error) => error.map(
                nullOrEmpty: (e) => 'Please type a list name.',
                tooLong: (e) =>
                    'Too long!. Please type less than ${e.maxLength} characters.'),
            (r) => null);
      },
      onChanged: (listName) {
        context.read(todoAddNotifierProvider.notifier).changeListName(listName);
      },
    );
  }
}

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ListNameField(),
        SizedBox(height: 20),
        _SubmitButton(),
      ],
    );
  }
}

class _Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Something went wrong when adding your new todo list.\nPlease try again later.',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}

class _States extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(todoAddNotifierProvider);
    return ProviderListener<TodoAddState>(
      provider: todoAddNotifierProvider,
      onChange: (context, state) {
        state.maybeWhen(
          done: () => AutoRouter.of(context).pop(),
          orElse: () {},
        );
      },
      child: state.map(
        form: (form) => _Form(),
        loading: (_) => CircularProgressIndicator(),
        error: (_) => _Error(),
        done: (_) => Container(),
      ),
    );
  }
}

class _SubmitButton extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(todoAddNotifierProvider);
    return ElevatedButton(
      child: Text('Add list'),
      onPressed: state.validate()
          ? () {
              context.read(todoAddNotifierProvider.notifier).createList();
            }
          : null,
    );
  }
}
