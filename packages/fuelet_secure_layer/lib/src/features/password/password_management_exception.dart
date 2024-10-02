// Base class for password management exceptions
class PasswordManagementException implements Exception {
  final String message;

  PasswordManagementException(this.message);

  @override
  String toString() => "PasswordManagementException: $message";
}

// Exception for password length issues
class PasswordLengthException extends PasswordManagementException {
  PasswordLengthException(super.message);

  @override
  String toString() => "PasswordLengthException: $message";
}

// Exception for invalid symbols in password
class PasswordInvalidSymbolsException extends PasswordManagementException {
  PasswordInvalidSymbolsException(super.message);

  @override
  String toString() => "PasswordInvalidSymbolsException: $message";
}

// Exception for cases when password is requested but not set
class PasswordNotSetException extends PasswordManagementException {
  PasswordNotSetException(super.message);

  @override
  String toString() => "PasswordNotSetException: $message";
}
