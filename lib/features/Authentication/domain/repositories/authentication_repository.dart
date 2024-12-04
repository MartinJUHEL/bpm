import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthenticationRepository {
  User? getCurrentUser();

  Future<UserCredential?> signUp(String email, String password);

  Future<UserCredential?> signIn(String email, String password);

  Future<void> signOut();

  Future<bool> isEmailVerfied();

  Future<void> verifyEmail();

  Future<void> resetPassword(String email);
}
