import 'package:assoshare/core/data/services/local/user_local_service.dart';
import 'package:assoshare/core/data/services/remote/user_remote_service.dart';
import 'package:assoshare/core/domain/entities/user_model.dart';
import 'package:assoshare/core/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserRepository)
class UserRepositoryImpl implements IUserRepository {
  final UserRemoteService _userRemoteService;
  final UserLocalService _userLocalService;

  UserRepositoryImpl(this._userRemoteService, this._userLocalService);

  @override
  Future<UserModel?> getUser(String uid) {
    return _userRemoteService.getUser(uid);
  }

  @override
  Future<void> saveUser(UserModel userModel) async {
    await saveUserLocal(userModel.displayName, userModel.uid);
    return _userRemoteService.saveUser(userModel);
  }

  @override
  String? getUserName() {
    return _userLocalService.getUserName();
  }

  @override
  String? getUid() {
    return _userLocalService.getUid();
  }

  @override
  Future<void> saveUserLocal(String userName, String uid) {
    return Future.wait([
      _userLocalService.saveUserName(userName),
      _userLocalService.saveUid(uid)
    ]);
  }

  @override
  Future<void> setUserVerified(bool isVerified) {
    return _userRemoteService.setUserVerified(isVerified);
  }
}
