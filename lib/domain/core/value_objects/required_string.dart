import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'required_string.freezed.dart';

class RequiredString {
  final String value;

  RequiredString._(this.value);

  static Either<RequiredStringValidationError, RequiredString> tryCreate(
      String? value) {
    if (value == null || value.isEmpty) {
      return left(RequiredStringValidationError.nullOrEmpty());
    }

    return right(RequiredString._(value));
  }
}

@freezed
class RequiredStringValidationError with _$RequiredStringValidationError {
  const factory RequiredStringValidationError.nullOrEmpty() = NullOrEmpty;
}
