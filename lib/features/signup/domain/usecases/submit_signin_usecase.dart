import 'package:assoshare/core/utils/logger/logger.dart';
import 'package:assoshare/features/Authentication/domain/repositories/authentication_repository.dart';
import 'package:assoshare/features/Authentication/domain/usecases/authentication_signed_out_usecase.dart';
import 'package:assoshare/features/signup/domain/usecases/fetch_and_save_user_local_usecase.dart';
import 'package:assoshare/features/signup/domain/usecases/is_email_valid_usecase.dart';
import 'package:assoshare/features/signup/domain/usecases/is_password_valid_usecase.dart';
import 'package:assoshare/features/signup/presentation/bloc/signup_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmitSignInUseCase {
  final IsEmailValidUseCase _isEmailValidUseCase;
  final IsPasswordValidUseCase _isPasswordValidUseCase;
  final IAuthenticationRepository _authenticationRepository;
  final AuthenticationSignedOutUseCase _authenticationSignedOutUseCase;
  final FetchAndSaveUserLocalUseCase _fetchAndSaveUserLocalUseCase;

  SubmitSignInUseCase(
      this._isEmailValidUseCase,
      this._isPasswordValidUseCase,
      this._authenticationRepository,
      this._fetchAndSaveUserLocalUseCase,
      this._authenticationSignedOutUseCase);

  Future<SignupState> execute(SignupState state) async {
    bool isFormValid = _isPasswordValidUseCase.execute(state.password) &&
        _isEmailValidUseCase.execute(state.email);

    if (isFormValid) {
      try {
        UserCredential? authUser =
            await _authenticationRepository.signIn(state.email, state.password);
        if (authUser?.user?.uid != null) {
          await _fetchAndSaveUserLocalUseCase.execute(authUser!.user!.uid);
        } else {
          await _authenticationSignedOutUseCase.execute();
          return state.copyWith(
              isLoading: false, errorMessage: 'tessssst', isFormValid: false);
        }
        return state.copyWith(
            isLoading: false, errorMessage: "", isFormValid: true);
      } on FirebaseAuthException catch (e) {
        logger.e(e.toString());
        return state.copyWith(
            isLoading: false, errorMessage: e.message, isFormValid: false);
      } catch (e) {
        logger.e(e.toString());
        return state.copyWith(
            isLoading: false,
            errorMessage: tr('errorOccurred'),
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
