part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent{
const factory AuthenticationEvent.started()= _AuthenticationStarted;
const factory AuthenticationEvent.signedOut()= _SignedOut;
}