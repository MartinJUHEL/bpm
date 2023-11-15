import 'dart:ffi';

import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:bpm/signup/domain/usecases/is_email_valid_usecase.dart';
import 'package:bpm/signup/domain/usecases/is_name_valid_usecase.dart';
import 'package:bpm/signup/domain/usecases/is_password_valid_usecase.dart';
import 'package:bpm/signup/presentation/bloc/signup_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmitSignupUseCase {
  final IsEmailValidUseCase _isEmailValidUseCase;
  final IsPasswordValidUseCase _isPasswordValidUseCase;
  final IsNameValidUseCase _isNameValidUseCase;
  final IAuthenticationRepository _authenticationRepository;

  SubmitSignupUseCase(this._isEmailValidUseCase, this._isPasswordValidUseCase,
      this._isNameValidUseCase, this._authenticationRepository);

  Future<SignupState> execute(SignupState state) async {
    UserModel user = UserModel(
        email: state.email,
        password: state.password,
        displayName: state.displayName);

    bool isNameValid = await _isNameValidUseCase.execute(state.displayName);
    bool isFormValid = isNameValid &&
        _isPasswordValidUseCase.execute(state.password) &&
        _isEmailValidUseCase.execute(state.email);

    if (isFormValid) {
      try {
        UserCredential? authUser = await _authenticationRepository.signUp(user);
        UserModel updatedUser = user.copyWith(
            uid: authUser?.user?.uid,
            isVerified: authUser?.user?.emailVerified);
        //await _databaseRepository.saveUserData(updatedUser);
        if (updatedUser.isVerified == true) {
          return state.copyWith(isLoading: false, errorMessage: "");
        } else {
          return state.copyWith(
              isFormValid: false,
              errorMessage: tr('checkEmailMessage'),
              isLoading: false);
        }
      } on FirebaseAuthException catch (e) {
        return state.copyWith(
            isLoading: false, errorMessage: e.message, isFormValid: false);
      }
    } else {
      return state.copyWith(
          isLoading: false,
          isFormValid: false,
          isFormValidateFailed: true,
          showError: true);
    }
  }
}
