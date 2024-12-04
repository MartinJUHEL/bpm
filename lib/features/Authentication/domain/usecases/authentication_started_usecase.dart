import 'package:assoshare/core/domain/repositories/user_repository.dart';
import 'package:assoshare/features/Authentication/domain/repositories/authentication_repository.dart';
import 'package:assoshare/features/Authentication/domain/usecases/is_email_verified_usecase.dart';
import 'package:assoshare/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationStartedUseCase {
  final IAuthenticationRepository _authenticationRepository;
  final IsEmailVerifiedUseCase _isEmailVerifiedUseCase;
  final UserRepository _userRepository;

  AuthenticationStartedUseCase(this._authenticationRepository, this._isEmailVerifiedUseCase, this._userRepository);

  Future<AuthenticationState> execute() async {
    try {
      User? user = _authenticationRepository.getCurrentUser();
      bool isEmailVerified = await _isEmailVerifiedUseCase.execute();
      if (user != null) {
        if (!isEmailVerified) {
          _authenticationRepository.verifyEmail();
          return const AuthenticationState.emailNotVerified();
        }
        final user = _userRepository.getLocalUser();
        if (user == null) {
          return const AuthenticationState.failure();
        } else {
          await _userRepository.setUserVerified(true);
          return AuthenticationState.success(user.displayName);
        }
      } else {
        return const AuthenticationState.failure();
      }
    } catch (e) {
      return const AuthenticationState.failure();
    }
  }
}
