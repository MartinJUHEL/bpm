import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:bpm/core/domain/mappers/user_model_firestore_to_model_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRemoteService {
  final FirebaseFirestore _firestore;
  final UserModelFirestoreToModelMapper _userModelFirestoreToModelMapper;

  UserRemoteService(this._firestore, this._userModelFirestoreToModelMapper);

  Future<void> saveUser(UserModel user) async {
    return _firestore.collection(_userPath).doc(user.uid).set(user.toJson());
  }

  Future<UserModel?> getUser(String uid) async {
    final user = await _firestore.collection(_userPath).doc(uid).get();
    return user.data() != null
        ? _userModelFirestoreToModelMapper.execute(user.data()!)
        : null;
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const String _userPath = 'users';
}
