part of 'reset_password_bloc.dart';

enum ResetPasswordStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == ResetPasswordStatus.initial;

  bool get isLoading => this == ResetPasswordStatus.loading;

  bool get isSuccess => this == ResetPasswordStatus.success;

  bool get isFailure => this == ResetPasswordStatus.failure;
}

@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState(
      {@Default(ResetPasswordStatus.initial) final ResetPasswordStatus status,
      @Default('') final String email,
      @Default('') final String error}) = _ResetPasswordState;
}
