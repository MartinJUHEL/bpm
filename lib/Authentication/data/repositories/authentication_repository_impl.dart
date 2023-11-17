import 'package:bpm/Authentication/data/services/remote/authentication_remote_service.dart';
import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAuthenticationRepository)
class AuthenticationRepositoryImpl implements IAuthenticationRepository {
  final AuthenticationRemoteService _authenticationRemoteService;

  AuthenticationRepositoryImpl(this._authenticationRemoteService);

  @override
  User? getCurrentUser() => _authenticationRemoteService.getCurrentUser();

  @override
  Future<UserCredential?> signIn(String email, String password) =>
      _authenticationRemoteService.signIn(email, password);

  @override
  Future<void> signOut() => _authenticationRemoteService.signOut();

  @override
  Future<UserCredential?> signUp(String email, String password) =>
      _authenticationRemoteService.signUp(email,password);

  @override
  Future<bool> isEmailVerfied() =>
      _authenticationRemoteService.isEmailVerified();

  @override
  Future<void> verifyEmail() => _authenticationRemoteService.verifyEmail();

  @override
  Future<void> resetPassword(String email) {
    return _authenticationRemoteService.resetPassword(email: email);
  }
}
