import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationRemoteService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationRemoteService(this._firebaseAuth);

  Stream<User?> getCurrentUser() {
    return _firebaseAuth.authStateChanges();
  }

  Future<String?> getUserName() async {
    return _firebaseAuth.currentUser?.displayName;
  }

  Future<UserCredential?> signUp(UserModel user) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: user.email!, password: user.password!);
      verifyEmail();
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

  Future<UserCredential?> signIn(UserModel user) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: user.email!, password: user.password!);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

  Future<void> verifyEmail() async {
    User? user = _firebaseAuth.currentUser;
    if (user != null && !user.emailVerified) {
      return await user.sendEmailVerification();
    }
  }

  Future<bool?> isEmailVerified() async {
    User? user = _firebaseAuth.currentUser;
    return user?.emailVerified == true;
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
