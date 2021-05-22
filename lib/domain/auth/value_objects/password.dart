import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/value_objects/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

class Password extends ValueObject with EquatableMixin {
  static const MaxLength = 100;
  static const MinLength = 6;

  final String password;

  Password._(this.password);

  static Either<PasswordValidationError, Password> tryCreate(String? password) {
    if (password == null || password.isEmpty) {
      return left(PasswordValidationError.nullOrEmpty());
    }

    if (password.length < MinLength) {
      return left(PasswordValidationError.tooShort(MinLength));
    }

    if (password.length > MaxLength) {
      return left(PasswordValidationError.tooLong(MaxLength));
    }

    return right(Password._(password));
  }

  @override
  List<Object?> get props => [password];
}

@freezed
class PasswordValidationError with _$PasswordValidationError {
  const factory PasswordValidationError.nullOrEmpty() = NullOrEmpty;
  const factory PasswordValidationError.tooLong(int maxLength) = TooLong;
  const factory PasswordValidationError.tooShort(int minLength) = TooShort;
}
