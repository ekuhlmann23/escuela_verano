import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/exceptions/validation_exception.dart';
import 'package:escuela_verano/domain/core/value_objects/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_name.freezed.dart';

class ListName extends ValueObject with EquatableMixin {
  static const MaxLength = 30;

  final String name;

  ListName._(this.name);

  static Either<ListNameValidationError, ListName> tryCreate(String? bodyText) {
    if (bodyText == null || bodyText.isEmpty) {
      return left(ListNameValidationError.nullOrEmpty());
    }

    if (bodyText.length > MaxLength) {
      return left(ListNameValidationError.tooLong(MaxLength));
    }

    return right(ListName._(bodyText));
  }

  static ListName createOrThrow(String? listName) =>
      tryCreate(listName).fold((l) => throw ValidationException(), (r) => r);

  @override
  List<Object?> get props => [name];
}

@freezed
class ListNameValidationError with _$ListNameValidationError {
  const factory ListNameValidationError.nullOrEmpty() = NullOrEmpty;
  const factory ListNameValidationError.tooLong(int maxLength) = TooLong;
}
