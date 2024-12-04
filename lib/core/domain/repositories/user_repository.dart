import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/core/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<Result<UserEntity>> fetchUser();

  UserEntity? getLocalUser();

  Future<void> saveUser(UserEntity user);

  Future<void> setUserVerified(bool isVerified);
}
