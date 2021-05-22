import 'package:dartz/dartz.dart';
import 'package:escuela_verano/domain/auth/value_objects/email.dart';
import 'package:escuela_verano/domain/auth/value_objects/password.dart';
import 'package:escuela_verano/domain/auth/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_auth_service.freezed.dart';

abstract class IAuthService {
  Stream<User?> get authStateChanges;
  Future<Either<AuthError, Unit>> signInWithCredentials(
      Email email, Password password);
  User? getCurrentUser();
  Future<void> signOut();
}

@freezed
class AuthError with _$AuthError {
  const factory AuthError.invalidCredentials() = InvalidCredentials;
  const factory AuthError.serverError(String message) = ServerError;
}
