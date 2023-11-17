import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationRemoteService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationRemoteService(this._firebaseAuth);

  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  Future<String?> getUserName() async {
    return _firebaseAuth.currentUser?.displayName;
  }

  Future<UserCredential?> signUp(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

  Future<UserCredential?> signIn(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password!);
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

  Future<bool> isEmailVerified() async {
    await _firebaseAuth.currentUser?.reload();
    User? user = _firebaseAuth.currentUser;
    return user?.emailVerified == true;
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<void> resetPassword({required String email}) {
    return _firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
