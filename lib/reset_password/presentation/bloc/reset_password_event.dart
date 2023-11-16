part of 'reset_password_bloc.dart';

@freezed
sealed class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.sendedEmailResetPassword(String email) = _SendedEmailResetPassword;
  const factory ResetPasswordEvent.emailChanged(String email) = _EmailChanged;
}
