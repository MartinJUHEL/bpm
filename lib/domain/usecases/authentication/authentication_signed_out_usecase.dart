import 'package:assoshare/domain/repositories/authentication_repository.dart';
import 'package:assoshare/domain/repositories/search_history_repository.dart';
import 'package:assoshare/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationSignedOutUseCase {
  final IAuthenticationRepository _authenticationRepository;
  final SearchHistoryRepository _historyRepository;

  AuthenticationSignedOutUseCase(this._authenticationRepository, this._historyRepository);

  Future<AuthenticationState> execute() async {
    await _historyRepository.clearHistory();
    await _authenticationRepository.signOut();
    return const AuthenticationState.failure();
  }
}
