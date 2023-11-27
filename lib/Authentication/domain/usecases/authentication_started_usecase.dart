import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:bpm/Authentication/domain/usecases/is_email_verified_usecase.dart';
import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationStartedUseCase {
  final IAuthenticationRepository _authenticationRepository;
  final IsEmailVerifiedUseCase _isEmailVerifiedUseCase;

  AuthenticationStartedUseCase(
      this._authenticationRepository, this._isEmailVerifiedUseCase);

  Future<AuthenticationState> execute() async {
    User? user = _authenticationRepository.getCurrentUser();
    bool isEmailVerified = await _isEmailVerifiedUseCase.execute();
    if (user != null) {
      if (!isEmailVerified) {
        _authenticationRepository.verifyEmail();
        return const AuthenticationState.emailNotVerified();
      }
      return AuthenticationState.success(user.displayName);
    } else {
      return const AuthenticationState.failure();
    }
  }
}
