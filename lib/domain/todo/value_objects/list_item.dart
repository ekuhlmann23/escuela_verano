import 'package:equatable/equatable.dart';

import 'item_description.dart';

class ListItem extends Equatable {
  final ItemDescription description;
  final bool completed;

  ListItem({required this.description, required this.completed});

  @override
  List<Object?> get props => [description, completed];
}
