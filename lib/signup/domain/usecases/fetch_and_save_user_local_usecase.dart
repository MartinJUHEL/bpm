import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:bpm/core/domain/repositories/user_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchAndSaveUserLocalUseCase {
  final IUserRepository _userRepository;

  FetchAndSaveUserLocalUseCase(this._userRepository);

  Future<void> execute(String uid) async {
    UserModel? user = await _userRepository.getUser(uid);
    return user != null
        ? _userRepository.saveUserLocal(user.displayName, user.uid)
        : Future.error(tr('errorOccured'));
  }
}
