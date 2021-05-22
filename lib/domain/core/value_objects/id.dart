import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/exceptions/validation_exception.dart';
import 'package:escuela_verano/domain/core/value_objects/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'id.freezed.dart';

class Id extends ValueObject with EquatableMixin {
  final String value;

  Id._(this.value);

  factory Id.generate() => Id._(Uuid().v4());

  static Either<IdValidationError, Id> tryCreate(String? id) {
    if (id == null || id.isEmpty) {
      return left(IdValidationError.nullOrEmpty());
    }
    if (!Uuid.isValidUUID(fromString: id)) {
      return left(IdValidationError.invalidId());
    }

    return right(Id._(id));
  }

  static Id createOrThrow(String? id) =>
      tryCreate(id).fold((l) => throw ValidationException(), (r) => r);

  @override
  List<Object?> get props => [value];
}

@freezed
class IdValidationError with _$IdValidationError {
  const factory IdValidationError.nullOrEmpty() = NullOrEmpty;
  const factory IdValidationError.invalidId() = InvalidId;
}
