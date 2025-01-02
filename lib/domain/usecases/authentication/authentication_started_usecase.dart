import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/repositories/authentication_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:assoshare/domain/usecases/authentication/is_email_verified_usecase.dart';
import 'package:assoshare/presentation/blocs/authentication/authentication_bloc.dart';
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

      /// Check if user email is verified.
      bool isEmailVerified = await _isEmailVerifiedUseCase.execute();

      if (user == null) {
        return const AuthenticationState.failure();
      }

      // Check if user email is verified and if not ask user.
      if (!isEmailVerified) {
        _authenticationRepository.verifyEmail();
        return const AuthenticationState.emailNotVerified();
      }

      // Get user information from database.
      final userEntityResult = await _userRepository.fetchUser();

      if (userEntityResult is IsFailure) {
        return const AuthenticationState.failure();
      }

      final userEntity = (userEntityResult as IsSuccess).data;

      // Set user email to verified.
      await _userRepository.setUserVerified(true);

      return AuthenticationState.success(userEntity);
    } catch (e) {
      return const AuthenticationState.failure();
    }
  }
}
