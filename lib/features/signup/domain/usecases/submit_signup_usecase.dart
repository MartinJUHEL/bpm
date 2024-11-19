import 'package:assoshare/core/domain/entities/user_model.dart';
import 'package:assoshare/features/Authentication/domain/repositories/authentication_repository.dart';
import 'package:assoshare/features/signup/domain/usecases/is_email_valid_usecase.dart';
import 'package:assoshare/features/signup/domain/usecases/is_name_valid_usecase.dart';
import 'package:assoshare/features/signup/domain/usecases/is_password_valid_usecase.dart';
import 'package:assoshare/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'save_user_usecase.dart';

@injectable
class SubmitSignupUseCase {
  final IsEmailValidUseCase _isEmailValidUseCase;
  final IsPasswordValidUseCase _isPasswordValidUseCase;
  final IsNameValidUseCase _isNameValidUseCase;
  final IAuthenticationRepository _authenticationRepository;
  final SaveUserUseCase _saveUserUseCase;

  SubmitSignupUseCase(
      this._isEmailValidUseCase,
      this._isPasswordValidUseCase,
      this._isNameValidUseCase,
      this._authenticationRepository,
      this._saveUserUseCase);

  Future<SignupState> execute(SignupState state) async {
    bool isNameValid = await _isNameValidUseCase.execute(state.displayName);
    bool isFormValid = isNameValid &&
        _isPasswordValidUseCase.execute(state.password) &&
        _isEmailValidUseCase.execute(state.email);

    if (isFormValid) {
      try {
        UserCredential? authUser =
            await _authenticationRepository.signUp(state.email, state.password);
        if (authUser?.user?.uid != null) {
          UserModel user = UserModel(
              uid: authUser!.user!.uid,
              isVerified: false,
              email: state.email,
              displayName: state.displayName,
              userType: state.userType,
              creationDate: DateTime.now());
          await _saveUserUseCase.execute(user);
        } else {
          return state.copyWith(
              isLoading: false,
              errorMessage: tr('errorOccured'),
              isFormValid: false);
        }
        return state.copyWith(
            isLoading: false, errorMessage: "", isFormValid: true);
      } on FirebaseAuthException catch (e) {
        return state.copyWith(
            isLoading: false, errorMessage: e.message, isFormValid: false);
      } catch (e) {
        return state.copyWith(
            isLoading: false,
            errorMessage: tr('errorOccured'),
            isFormValid: false);
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
