class Failure {
  final String message;
  final dynamic data;

  const Failure(this.message, {this.data});
}

class ApiFailure extends Failure {
  final ApiErrors errorCode;
  ApiFailure(this.errorCode, String message) : super(message);
}

class NetworkFailure {
  final String message;
  NetworkFailure(this.message);
}

class UIError {
  final String message;
  const UIError(this.message);
}

enum ApiErrors {

  noInternet,
  serverError,
  unknown,

}