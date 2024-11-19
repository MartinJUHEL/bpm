import 'package:assoshare/features/Authentication/domain/repositories/authentication_repository.dart';
import 'package:assoshare/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationSignedOutUseCase {
  final IAuthenticationRepository _authenticationRepository;

  AuthenticationSignedOutUseCase(this._authenticationRepository);

  Future<AuthenticationState> execute() async {
   await _authenticationRepository.signOut();
   return const AuthenticationState.failure();
  }
}