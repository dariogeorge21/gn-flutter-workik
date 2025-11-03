class Failure {
  final String message;
  final String? errorCode;

  const Failure(this.message, {this.errorCode});

  @override
  String toString() => 'Failure: $message${errorCode != null ? ' ($errorCode)' : ''}';
}

class ServerFailure extends Failure {
  const ServerFailure(String message, {String? errorCode}) : super(message, errorCode: errorCode);
}

class NetworkFailure extends Failure {
  const NetworkFailure(String message) : super(message);
}

class CacheFailure extends Failure {
  const CacheFailure(String message) : super(message);
}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure(String message) : super(message);
}

class ValidationFailure extends Failure {
  const ValidationFailure(String message) : super(message);
}

class PermissionFailure extends Failure {
  const PermissionFailure(String message) : super(message);
}

class AudioFailure extends Failure {
  const AudioFailure(String message) : super(message);
}
