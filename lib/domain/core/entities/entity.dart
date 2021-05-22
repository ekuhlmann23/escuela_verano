import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';

abstract class Entity with EquatableMixin {
  final Id id;

  Entity(this.id);

  @override
  List<Object?> get props => [id];
}
