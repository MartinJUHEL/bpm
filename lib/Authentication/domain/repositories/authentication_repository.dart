import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthenticationRepository {
  User? getCurrentUser();

  Future<UserCredential?> signUp(UserModel user);

  Future<UserCredential?> signIn(UserModel user);

  Future<void> signOut();

  Future<bool> isEmailVerfied();

  Future<void> verifyEmail();

  Future<void> resetPassword(String email);
}
