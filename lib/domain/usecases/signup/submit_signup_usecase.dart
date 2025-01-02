import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/repositories/authentication_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:assoshare/domain/usecases/signup/is_email_valid_usecase.dart';
import 'package:assoshare/domain/usecases/signup/is_name_valid_usecase.dart';
import 'package:assoshare/domain/usecases/signup/is_password_valid_usecase.dart';
import 'package:assoshare/presentation/blocs/signup/signup_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmitSignupUseCase {
  final IsEmailValidUseCase _isEmailValidUseCase;
  final IsPasswordValidUseCase _isPasswordValidUseCase;
  final IsNameValidUseCase _isNameValidUseCase;
  final IAuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  SubmitSignupUseCase(this._isEmailValidUseCase, this._isPasswordValidUseCase, this._isNameValidUseCase,
      this._authenticationRepository, this._userRepository);

  Future<SignupState> execute(SignupState state) async {
    bool isNameValid = await _isNameValidUseCase.execute(state.displayName);
    bool isFormValid =
        isNameValid && _isPasswordValidUseCase.execute(state.password) && _isEmailValidUseCase.execute(state.email);

    if (isFormValid) {
      try {
        UserCredential? authUser = await _authenticationRepository.signUp(state.email, state.password);
        if (authUser?.user?.uid != null) {
          UserEntity user = UserEntity(
              uid: authUser!.user!.uid,
              isVerified: false,
              email: state.email,
              displayName: state.displayName,
              userType: state.userType,
              creationDate: DateTime.now());
          await _userRepository.saveUser(user);
        } else {
          return state.copyWith(isLoading: false, errorMessage: tr('errorOccurred'), isFormValid: false);
        }
        return state.copyWith(isLoading: false, errorMessage: "", isFormValid: true);
      } on FirebaseAuthException catch (e) {
        return state.copyWith(isLoading: false, errorMessage: e.message, isFormValid: false);
      } catch (e) {
        return state.copyWith(isLoading: false, errorMessage: tr('errorOccured'), isFormValid: false);
      }
    } else {
      return state.copyWith(isLoading: false, isFormValid: false, isFormValidateFailed: true, showError: true);
    }
  }
}
