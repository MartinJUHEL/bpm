enum CommonStatus{
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == CommonStatus.initial;

  bool get isLoading => this == CommonStatus.loading;

  bool get isSuccess => this == CommonStatus.success;

  bool get isFailure => this == CommonStatus.failure;
}