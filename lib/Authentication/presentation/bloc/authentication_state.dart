part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState{
  const factory AuthenticationState.initial()= Initial;
  const factory AuthenticationState.loading()= Loading;
  factory AuthenticationState.success(String? displayName)=Success;
  const factory AuthenticationState.failure()= Failure;
}