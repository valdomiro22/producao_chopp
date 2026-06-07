sealed class UiState<T> {
  const UiState();

  bool get isLoading => this is Loading<T>;
  bool get isSuccess => this is Success<T>;
  bool get isError => this is Error<T>;

  T? getOrNull() {
    final state = this;

    if (state is Success<T>) {
      return state.data;
    }

    return null;
  }
}

class Idle<T> extends UiState<T> {
  const Idle();
}

class Loading<T> extends UiState<T> {
  const Loading();
}

class Success<T> extends UiState<T> {
  final T data;

  const Success(this.data);
}

class Error<T> extends UiState<T> {
  final String message;

  const Error(this.message);
}