import 'package:dartz/dartz.dart';
import 'package:escuela_verano/domain/core/exceptions/validation_exception.dart';

extension EitherExtensions<L, R> on Either<L, R> {
  R rightOrThrow() =>
      this.fold((l) => throw ValidationException(), (r) => r);
}
