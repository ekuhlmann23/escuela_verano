import 'package:escuela_verano/domain/core/value_objects/id.dart';

import 'entity.dart';

abstract class AggregateRoot extends Entity {
  AggregateRoot(Id id) : super(id);
}