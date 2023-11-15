import 'package:bloc/bloc.dart';
import 'package:bpm/Authentication/domain/usecases/authentication_signed_out_usecase.dart';
import 'package:bpm/Authentication/domain/usecases/authentication_started_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationStartedUseCase authenticationStartedUseCase;
  final AuthenticationSignedOutUseCase authenticationSignedOutUseCase;

  AuthenticationBloc(
      this.authenticationStartedUseCase, this.authenticationSignedOutUseCase)
      : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((events, emit) async {
      await events.map(
          started: (_) async => await _authenticationStarted(emit),
          signedOut: (_) async => await _signedOut(emit));
    });
  }

  _authenticationStarted(Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.loading());
    AuthenticationState state = await authenticationStartedUseCase.execute();
    emit(state);
  }

  _signedOut(Emitter<AuthenticationState> emit) async {
    AuthenticationState state = await authenticationSignedOutUseCase.execute();
    return state;
  }
}
