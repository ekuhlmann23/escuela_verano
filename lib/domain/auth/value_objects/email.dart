import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:escuela_verano/domain/core/value_objects/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

class Email extends ValueObject with EquatableMixin {
  static const MaxLength = 100;
  static const EmailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  final String email;

  // private constructor, only way to instantiate is with tryCreate.
  Email._(this.email);

  static Either<EmailValidationError, Email> tryCreate(String? email) {
    if (email == null || email.isEmpty) {
      return left(EmailValidationError.nullOrEmpty());
    }
    if (email.length > MaxLength) {
      return left(EmailValidationError.tooLong(MaxLength));
    }
    if (!RegExp(EmailRegex).hasMatch(email)) {
      return left(EmailValidationError.invalidEmail());
    }

    return right(Email._(email));
  }

  @override
  List<Object?> get props => [email];
}

@freezed
class EmailValidationError with _$EmailValidationError {
  const factory EmailValidationError.invalidEmail() = InvalidEmail;
  const factory EmailValidationError.tooLong(int maxLength) = TooLong;
  const factory EmailValidationError.nullOrEmpty() = NullOrEmpty;
}
