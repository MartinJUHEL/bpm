import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/usecases/authentication/authentication_signed_out_usecase.dart';
import 'package:assoshare/domain/usecases/authentication/authentication_started_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationStartedUseCase _authenticationStartedUseCase;
  final AuthenticationSignedOutUseCase _authenticationSignedOutUseCase;

  AuthenticationBloc(this._authenticationStartedUseCase, this._authenticationSignedOutUseCase)
      : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((events, emit) async {
      await events.map(started: (_) => _authenticationStarted(emit), signedOut: (_) => _signedOut(emit));
    });
  }

  _authenticationStarted(Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.loading());
    AuthenticationState state = await _authenticationStartedUseCase.execute();
    emit(state);
  }

  _signedOut(Emitter<AuthenticationState> emit) async {
    AuthenticationState state = await _authenticationSignedOutUseCase.execute();
    emit(state);
  }
}
