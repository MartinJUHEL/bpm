part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState{
  const factory AuthenticationState.initial()= _Initial;
  const factory AuthenticationState.loading()= _Loading;
  const factory AuthenticationState.emailNotVerified()= _EmailNotVerified;
  factory AuthenticationState.success(String? displayName)=_Success;
  const factory AuthenticationState.failure()= _Failure;
}