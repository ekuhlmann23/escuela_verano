import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_description.freezed.dart';

class ItemDescription {
  final String value;
  static const maxLength = 500;

  ItemDescription._(this.value);

  static ItemDescription tryCreate(String description) {
    if (description.length > maxLength) {
      throw Exception();
    }

    return ItemDescription._(description);
  }
}

@Freezed()
class ItemDescriptionValidationError with _$ItemDescriptionValidationError {
  factory ItemDescriptionValidationError.tooLong(int maxLength) = _TooLong;
}
