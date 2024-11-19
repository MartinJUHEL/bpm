import 'package:assoshare/core/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserNameUseCase {
  final IUserRepository _userRepository;

  GetUserNameUseCase(this._userRepository);

  String? execute() {
    return _userRepository.getUserName();
  }
}
