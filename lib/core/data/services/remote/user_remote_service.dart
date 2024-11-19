import 'package:assoshare/core/domain/entities/user_model.dart';
import 'package:assoshare/core/domain/mappers/user_model_firestore_to_model_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRemoteService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final UserModelFirestoreToModelMapper _userModelFirestoreToModelMapper;

  UserRemoteService(
      this._firestore, this._userModelFirestoreToModelMapper, this._auth);

  Future<void> saveUser(UserModel user) async {
    return _firestore.collection(_userPath).doc(user.uid).set(user.toJson());
  }

  Future<UserModel?> getUser(String uid) async {
    final user = await _firestore.collection(_userPath).doc(uid).get();
    return user.data() != null
        ? _userModelFirestoreToModelMapper.execute(user.data()!)
        : null;
  }

  Future<void> setUserVerified(bool isVerified) async {
    if (_auth.currentUser?.uid != null) {
      return _firestore
          .collection(_userPath)
          .doc(_auth.currentUser!.uid)
          .update({_isVerified: isVerified});
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
