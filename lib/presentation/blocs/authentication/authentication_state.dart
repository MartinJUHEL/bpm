part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = Initial;

  const factory AuthenticationState.loading() = Loading;

  const factory AuthenticationState.emailNotVerified() = EmailNotVerified;

  factory AuthenticationState.success(UserEntity user) = Success;

  const factory AuthenticationState.failure() = Failure;
}
