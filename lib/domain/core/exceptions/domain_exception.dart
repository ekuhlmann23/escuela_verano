class DomainException implements Exception {
  final String userFriendlyErrorMessage;

  DomainException(this.userFriendlyErrorMessage);
}
