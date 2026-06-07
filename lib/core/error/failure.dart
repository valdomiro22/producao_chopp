abstract class Failure {
  final String message;

  const Failure(this.message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message);
}

class UnknownFailure extends Failure {
  const UnknownFailure(super.message);
}