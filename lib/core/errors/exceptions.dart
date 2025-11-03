class AppException implements Exception {
  final String message;
  final int? statusCode;

  const AppException(this.message, {this.statusCode});

  @override
  String toString() => 'AppException: $message${statusCode != null ? ' ($statusCode)' : ''}';
}

class ApiException extends AppException {
  const ApiException(String message, {int? statusCode}) : super(message, statusCode: statusCode);
}

class NetworkException extends AppException {
  const NetworkException(String message) : super(message);
}

class AuthException extends AppException {
  const AuthException(String message) : super(message);
}

class CacheException extends AppException {
  const CacheException(String message) : super(message);
}

class DataParsingException extends AppException {
  const DataParsingException(String message) : super(message);
}

class FileSystemException extends AppException {
  const FileSystemException(String message) : super(message);
}

class AudioException extends AppException {
  const AudioException(String message) : super(message);
}
