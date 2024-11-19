import 'package:assoshare/core/domain/entities/user_model.dart';

abstract class IUserRepository {
  Future<UserModel?> getUser(String uid);
  Future<void> saveUser(UserModel userModel);
  Future<void> saveUserLocal(String userName, String uid);
  Future<void> setUserVerified(bool isVerified);
  String? getUserName();
  String? getUid();
}
