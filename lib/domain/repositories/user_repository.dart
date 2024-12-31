import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Stream<Result<UserEntity>> watchUser();

  Future<Result<UserEntity>> fetchUser();

  UserEntity? getLocalUser();

  Future<void> saveUser(UserEntity user);

  /// Set user email to verified.
  Future<void> setUserVerified(bool isVerified);
}
