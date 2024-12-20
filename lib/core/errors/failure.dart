class Failure {
  final String error;
  Failure(this.error);
}

class ServerError extends Failure {
  ServerError(super.error);
}
