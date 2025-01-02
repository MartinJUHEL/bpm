import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:assoshare/core/data/services/base_firebase_service.dart';
import 'package:assoshare/data/models/user/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserRemoteService extends BaseFirebaseService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  UserRemoteService(this._firestore, this._auth, super._logger);

  Future<void> saveUser(UserModel user) async {
    return await executeWithErrorHandling(
        () => _firestore.collection(_userPath).doc(user.uid).set(user.toJson()), 'saveUser');
  }

  Future<UserModel> getUser(String uid) async {
    final userDoc = await executeWithErrorHandling(() => _firestore.collection(_userPath).doc(uid).get(), 'getUser');
    final userJson = userDoc.data();
    if (userJson == null) {
      throw NotFoundException();
    }
    return UserModel.fromJson(userJson);
  }

  Future<void> setUserVerified(bool isVerified) async {
    if (_auth.currentUser?.uid != null) {
      return executeWithErrorHandling(
          () => _firestore.collection(_userPath).doc(_auth.currentUser!.uid).update({_isVerified: isVerified}),
          'setUserVerified');
    } else {
      throw UnauthorizedException();
    }
  }

  Stream<UserModel> watchUser(String uid) async* {
    yield* handleStreamWithErrorHandling(
        () => _firestore.collection(_userPath).doc(uid).snapshots().map((doc) {
              final data = doc.data();
              if (data != null) {
                return UserModel.fromJson(data);
              } else {
                throw NotFoundException();
              }
            }),
        'watchUser');
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const String _userPath = 'users';
  static const String _isVerified = 'isVerified';
}
