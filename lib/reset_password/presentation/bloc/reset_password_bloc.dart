import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/reset_password/domain/usecases/get_reset_password_state_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

part 'reset_password_bloc.freezed.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final GetResetPasswordStateUseCase _getResetPasswordStateUseCase;

  ResetPasswordBloc(this._getResetPasswordStateUseCase)
      : super(ResetPasswordState()) {
    on<ResetPasswordEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
          sendedEmailResetPassword: (String email) =>
              _sendedEmailResetPassword(email, emit),
          emailChanged: (String email) => _onEmailChanged(email, emit));
    });
  }

  void _onEmailChanged(String email, Emitter<ResetPasswordState> emit) {
    emit(state.copyWith(
      email: email,
      status: ResetPasswordStatus.initial,
    ));
  }

  Future<void> _sendedEmailResetPassword(
      String email, Emitter<ResetPasswordState> emit) async {
    ResetPasswordState newState =
        await _getResetPasswordStateUseCase.execute(email);
    emit(newState);
  }
}
