class Failure {
  final String message;
  final dynamic data;

  const Failure(this.message, {this.data});
}

class ApiFailure extends Failure {
  final ApiErrors errorCode;
  ApiFailure(this.errorCode, String message) : super(message);
}

class NetworkFailure extends Failure {
  final String msg;
  NetworkFailure(this.msg) : super(msg);
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