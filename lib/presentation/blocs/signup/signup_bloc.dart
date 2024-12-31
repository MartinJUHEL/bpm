import 'dart:async';

import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/usecases/signup/is_email_valid_usecase.dart';
import 'package:assoshare/domain/usecases/signup/is_name_valid_usecase.dart';
import 'package:assoshare/domain/usecases/signup/is_password_valid_usecase.dart';
import 'package:assoshare/domain/usecases/signup/submit_signin_usecase.dart';
import 'package:assoshare/domain/usecases/signup/submit_signup_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IsEmailValidUseCase _isEmailValidUseCase;
  final IsPasswordValidUseCase _isPasswordValidUseCase;
  final IsNameValidUseCase _isNameValidUseCase;
  final SubmitSignupUseCase _submitSignupUseCase;
  final SubmitSignInUseCase _submitSignInUseCase;

  SignupBloc(
      this._isEmailValidUseCase,
      this._isPasswordValidUseCase,
      this._isNameValidUseCase,
      this._submitSignupUseCase,
      this._submitSignInUseCase)
      : super(SignupState.initial()) {
    on<SignupEvent>((events, emit) async {
      await events.when<FutureOr<void>>(
          emailChanged: (email) => _onEmailChanged(email, emit),
          passwordChanged: (password) => _onPasswordChanged(password, emit),
          nameChanged: (name) => _onNameChanged(name, emit),
          submitted: () => _onSubmitted(emit),
          obscurePasswordToggled: () => _obscurePasswordToggled(emit),
          succeeded: () => _onSucceeded(emit),
          formTypeToggled: (FormType form) => _formTypeToggled(form, emit),
          initialized: (FormType formType, UserType userType) =>
              _initialized(formType, userType, emit),
          closeErrorDialog: () => _onErrorDialogClosed(emit));
    });
  }

  _onEmailChanged(String email, Emitter<SignupState> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      email: email,
      isEmailValid: _isEmailValidUseCase.execute(email),
    ));
  }

  _onPasswordChanged(String password, Emitter<SignupState> emit) {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      password: password,
      isPasswordValid: _isPasswordValidUseCase.execute(password),
    ));
  }

  Future<void> _onNameChanged(String name, Emitter<SignupState> emit) async {
    emit(state.copyWith(
      isFormSuccessful: false,
      isFormValid: false,
      isFormValidateFailed: false,
      errorMessage: "",
      isNameValid: true,
      displayName: name,
      isPasswordValid: await _isNameValidUseCase.execute(name),
    ));
  }

  Future<void> _onSubmitted(Emitter<SignupState> emit) async {
    emit(state.copyWith(isLoading: true));
    if (state.formType == FormType.signUp) {
      SignupState updatedState = await _submitSignupUseCase.execute(state);
      emit(updatedState);
    } else {
      SignupState updatedState = await _submitSignInUseCase.execute(state);
      emit(updatedState);
    }
  }

  _onSucceeded(Emitter<SignupState> emit) {
    emit(state.copyWith(isFormSuccessful: true));
  }

  _obscurePasswordToggled(Emitter<SignupState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  _formTypeToggled(FormType form, Emitter<SignupState> emit) {
    emit(state.copyWith(formType: form));
  }

  _initialized(
      FormType formType, UserType userType, Emitter<SignupState> emit) {
    emit(state.copyWith(formType: formType, userType: userType));
  }

  _onErrorDialogClosed(Emitter<SignupState> emit) {
    emit(state.copyWith(errorMessage: empty));
  }
}
