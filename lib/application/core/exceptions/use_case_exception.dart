class UseCaseException implements Exception {
  final String userFriendlyErrorMessage;

  UseCaseException(this.userFriendlyErrorMessage);
}
