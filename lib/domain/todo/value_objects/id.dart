import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'id.freezed.dart';

class Id extends Equatable {
  final String value;

  Id._(this.value);

  static Either<IdValidationError, Id> tryCreate(String id) {
    if (!Uuid.isValidUUID(fromString: id)) {
      return left(IdValidationError.invalidId(id));
    }

    return right(Id._(id));
  }

  @override
  List<Object?> get props => [value];
}

@Freezed()
class IdValidationError with _$IdValidationError {
  factory IdValidationError.invalidId(String id) = _InvalidId;
}
