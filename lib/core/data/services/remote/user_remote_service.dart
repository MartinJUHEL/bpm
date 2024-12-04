import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:assoshare/core/data/models/user/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserRemoteService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  UserRemoteService(this._firestore, this._auth);

  Future<void> saveUser(UserModel user) async {
    return _firestore.collection(_userPath).doc(user.uid).set(user.toJson());
  }

  Future<UserModel> getUser(String uid) async {
    final userDoc = await _firestore.collection(_userPath).doc(uid).get();
    final userJson = userDoc.data();
    if (userJson == null) {
      throw NotFoundException();
    }
    return UserModel.fromJson(userJson);
  }

  Future<void> setUserVerified(bool isVerified) async {
    if (_auth.currentUser?.uid != null) {
      return _firestore.collection(_userPath).doc(_auth.currentUser!.uid).update({_isVerified: isVerified});
    } else {
      return Future.error(tr('userNotAuthenticated'));
    }
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const String _userPath = 'users';
  static const String _isVerified = 'isVerified';
}
