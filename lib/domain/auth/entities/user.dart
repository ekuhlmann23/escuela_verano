import 'package:escuela_verano/domain/core/entities/aggregate_root.dart';
import 'package:escuela_verano/domain/core/value_objects/id.dart';

class User extends AggregateRoot {
  final String email;

  User({required Id id, required this.email}) : super(id);
}
