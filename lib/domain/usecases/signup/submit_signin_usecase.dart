import 'package:assoshare/domain/repositories/authentication_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:assoshare/core/utils/logger/logger.dart';
import 'package:assoshare/domain/usecases/authentication/authentication_signed_out_usecase.dart';
import 'package:assoshare/domain/usecases/signup/is_email_valid_usecase.dart';
import 'package:assoshare/domain/usecases/signup/is_password_valid_usecase.dart';
import 'package:assoshare/presentation/blocs/signup/signup_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmitSignInUseCase {
  final IsEmailValidUseCase _isEmailValidUseCase;
  final IsPasswordValidUseCase _isPasswordValidUseCase;
  final IAuthenticationRepository _authenticationRepository;
  final AuthenticationSignedOutUseCase _authenticationSignedOutUseCase;
  final UserRepository _userRepository;

  SubmitSignInUseCase(this._isEmailValidUseCase, this._isPasswordValidUseCase, this._authenticationRepository,
      this._authenticationSignedOutUseCase, this._userRepository);

  Future<SignupState> execute(SignupState state) async {
    bool isFormValid = _isPasswordValidUseCase.execute(state.password) && _isEmailValidUseCase.execute(state.email);

    if (isFormValid) {
      try {
        await _authenticationRepository.signIn(state.email, state.password);
        if (_authenticationRepository.getCurrentUser() != null) {
          await _userRepository.fetchUser();
        } else {
          await _authenticationSignedOutUseCase.execute();
          return state.copyWith(isLoading: false, errorMessage: 'tessssst', isFormValid: false);
        }
        return state.copyWith(isLoading: false, errorMessage: "", isFormValid: true);
      } on FirebaseAuthException catch (e) {
        logger.e(e.toString());
        return state.copyWith(isLoading: false, errorMessage: e.message, isFormValid: false);
      } catch (e) {
        logger.e(e.toString());
        return state.copyWith(isLoading: false, errorMessage: tr('errorOccurred'), isFormValid: false);
      }
    } else {
      return state.copyWith(isLoading: false, isFormValid: false, isFormValidateFailed: true, showError: true);
    }
  }
}
