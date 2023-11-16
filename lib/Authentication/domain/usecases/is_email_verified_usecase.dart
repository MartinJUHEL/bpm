import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class IsEmailVerifiedUseCase {
  final IAuthenticationRepository _authenticationRepository;

  IsEmailVerifiedUseCase(this._authenticationRepository);

  Future<bool> execute() async {
    return _authenticationRepository.isEmailVerfied();
  }
}