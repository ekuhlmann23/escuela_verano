import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_description.freezed.dart';

class ItemDescription extends Equatable {
  final String value;
  static const maxLength = 500;

  ItemDescription._(this.value);

  static Either<ItemDescriptionValidationError, ItemDescription> tryCreate(
      String description) {
    if (description.length > maxLength) {
      left(ItemDescriptionValidationError.tooLong(maxLength));
    }

    return right(ItemDescription._(description));
  }

  static ItemDescription createOrThrow(String description) =>
      tryCreate(description).fold((l) => throw Exception(), (r) => r);

  @override
  List<Object?> get props => [value];
}

@Freezed()
class ItemDescriptionValidationError with _$ItemDescriptionValidationError {
  factory ItemDescriptionValidationError.tooLong(int maxLength) = _TooLong;
}
