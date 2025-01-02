import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/data/models/user/user_model.dart';
import 'package:assoshare/data/services/user_firebase_service.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/domain/repositories/authentication_repository.dart';
import 'package:assoshare/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final UserRemoteService _userRemoteService;
  final IAuthenticationRepository _authenticationRepository;

  UserRepositoryImpl(this._userRemoteService, super._genericErrorTrigger, super._connectivityInfo, super._logger,
      this._authenticationRepository);

  UserEntity? cachedUser;

  @override
  Future<Result<UserEntity>> fetchUser() async {
    final userUid = _authenticationRepository.getCurrentUser()?.uid;
    if (userUid == null) {
      return const Result.failure(Failure.unauthorized());
    }
    final result =
        await safeCall(action: () => _userRemoteService.getUser(userUid), transform: (dto) => dto.toEntity());

    return result.when(
        success: (userEntity) {
          cachedUser = userEntity;
          return Result.success(userEntity);
        },
        failure: (_) => result);
  }

  @override
  UserEntity? getLocalUser() {
    return cachedUser;
  }

  @override
  Future<void> saveUser(UserEntity user) async {
    cachedUser = user;
    return _userRemoteService.saveUser(UserModel.fromEntity(user));
  }

  @override
  Future<void> setUserVerified(bool isVerified) {
    return _userRemoteService.setUserVerified(isVerified);
  }

  @override
  Stream<Result<UserEntity>> watchUser() {
    final userUid = _authenticationRepository.getCurrentUser()?.uid;
    if (userUid == null) {
      return Stream.value(const Result.failure(Failure.unauthorized()));
    }
    return _userRemoteService.watchUser(userUid).map((user) => Result.success(user.toEntity()));
  }
}
