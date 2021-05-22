import 'package:auto_route/auto_route.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';
import 'package:escuela_verano/domain/todo/value_objects/item_body.dart';
import 'package:escuela_verano/domain/todo/value_objects/list_name.dart';
import 'package:escuela_verano/presentation/providers.dart';
import 'package:escuela_verano/presentation/todo/state/todo_edit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoEditPage extends StatefulWidget {
  final Id todoListId;

  const TodoEditPage({Key? key, required this.todoListId}) : super(key: key);

  @override
  _TodoEditPageState createState() => _TodoEditPageState();
}

class _TodoEditPageState extends State<TodoEditPage> {
  @override
  void initState() {
    super.initState();
    context.read(todoEditNotifierProvider.notifier).loadData(widget.todoListId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit todo list')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: _States(),
          ),
        ),
      ),
    );
  }
}

class _States extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final state = useProvider(todoEditNotifierProvider);
    return ProviderListener<TodoEditState>(
      provider: todoEditNotifierProvider,
      onChange: (context, state) {
        state.maybeMap(
          done: (_) {
            AutoRouter.of(context).pop();
          },
          orElse: () {},
        );
      },
      child: state.map(
          loading: (_) => _Loading(),
          data: (data) => _Data(dataState: data),
          error: (e) => _Error(friendlyMessage: e.friendlyMessage),
          done: (_) => _Done()),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}

class _Data extends StatelessWidget {
  final DataState dataState;

  const _Data({Key? key, required this.dataState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ListNameField(initialValue: dataState.todoList.name.name),
        SizedBox(height: 10),
        _ItemsListView(itemStates: dataState.itemStates),
        SizedBox(height: 10),
        _AddItemTile(),
        SizedBox(height: 10),
        _Buttons(dataState: dataState),
      ],
    );
  }
}

class _AddItemTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('List item'),
      leading: Icon(Icons.add),
      onTap: () {
        context.read(todoEditNotifierProvider.notifier).addItem();
      },
    );
  }
}

class _ListNameField extends StatelessWidget {
  final String initialValue;

  const _ListNameField({Key? key, required this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autovalidateMode: AutovalidateMode.always,
      decoration: InputDecoration(
        labelText: 'List name',
        border: OutlineInputBorder(),
      ),
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
        context
            .read(todoEditNotifierProvider.notifier)
            .changeListName(listName);
      },
    );
  }
}

class _ItemsListView extends StatelessWidget {
  final List<TodoItemState> itemStates;

  const _ItemsListView({Key? key, required this.itemStates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: itemStates.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                ItemCompletedCheckbox(itemStates: itemStates, index: index),
            title: ItemBodyField(itemStates: itemStates, index: index),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                context
                    .read(todoEditNotifierProvider.notifier)
                    .removeItem(index);
              },
            ),
          );
        },
      ),
    );
  }
}

class ItemCompletedCheckbox extends StatelessWidget {
  final List<TodoItemState> itemStates;
  final int index;

  const ItemCompletedCheckbox(
      {Key? key, required this.itemStates, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: itemStates[index].completed,
      onChanged: (completed) => context
          .read(todoEditNotifierProvider.notifier)
          .changeItemCompleted(index, completed ?? false),
    );
  }
}

class ItemBodyField extends StatelessWidget {
  final List<TodoItemState> itemStates;
  final int index;

  const ItemBodyField({Key? key, required this.itemStates, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: itemStates[index].bodyText,
      autovalidateMode: AutovalidateMode.always,
      validator: (bodyText) {
        final result = ItemBody.tryCreate(bodyText);
        return result.fold(
            (error) => error.map(
                nullOrEmpty: (e) => 'Please type the body for this item.',
                tooLong: (e) =>
                    'Too long!. Please type less than ${e.maxLength} characters.'),
            (r) => null);
      },
      onChanged: (bodyText) {
        context
            .read(todoEditNotifierProvider.notifier)
            .changeItemBodyText(index, bodyText);
      },
    );
  }
}

class _Buttons extends StatelessWidget {
  final DataState dataState;

  const _Buttons({Key? key, required this.dataState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.redAccent.shade100)),
          onPressed: () {
            context.read(todoEditNotifierProvider.notifier).delete();
          },
          child: Text(
            'Delete',
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.tealAccent)),
          onPressed: dataState.validate()
              ? () {
                  context.read(todoEditNotifierProvider.notifier).save();
                }
              : null,
          child: Text(
            'Save list',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class _Error extends StatelessWidget {
  final String? friendlyMessage;

  const _Error({Key? key, this.friendlyMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        friendlyMessage ?? 'Something went wrong. Please try again later.',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}

class _Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
