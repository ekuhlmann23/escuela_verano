import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/exceptions/validation_exception.dart';
import 'package:escuela_verano/domain/core/value_objects/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_body.freezed.dart';

class ItemBody extends ValueObject with EquatableMixin {
  static const MaxLength = 1000;

  final String bodyText;

  ItemBody._(this.bodyText);

  static Either<ItemBodyValidationError, ItemBody> tryCreate(String? bodyText) {
    if (bodyText == null || bodyText.isEmpty) {
      return left(ItemBodyValidationError.nullOrEmpty());
    }

    if (bodyText.length > MaxLength) {
      return left(ItemBodyValidationError.tooLong(MaxLength));
    }

    return right(ItemBody._(bodyText));
  }

  static ItemBody createOrThrow(String? bodyText) =>
      tryCreate(bodyText).fold((l) => throw ValidationException(), (r) => r);

  @override
  List<Object?> get props => [bodyText];
}

@freezed
class ItemBodyValidationError with _$ItemBodyValidationError {
  const factory ItemBodyValidationError.nullOrEmpty() = NullOrEmpty;
  const factory ItemBodyValidationError.tooLong(int maxLength) = TooLong;
}
