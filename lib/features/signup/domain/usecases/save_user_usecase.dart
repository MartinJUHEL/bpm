import 'package:assoshare/core/domain/entities/user_model.dart';
import 'package:assoshare/core/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveUserUseCase {
  final IUserRepository _userRepository;

  SaveUserUseCase(this._userRepository);

  Future<void> execute(UserModel user) async {
    return _userRepository.saveUser(user);
  }
}
