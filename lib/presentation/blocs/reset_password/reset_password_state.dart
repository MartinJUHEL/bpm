part of 'reset_password_bloc.dart';

@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState(
      {@Default(CommonStatus.initial) final CommonStatus status,
      @Default('') final String email,
      @Default('') final String error}) = _ResetPasswordState;
}
