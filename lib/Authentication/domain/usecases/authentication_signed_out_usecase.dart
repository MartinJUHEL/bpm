import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationSignedOutUseCase {
  final IAuthenticationRepository authenticationRepository;

  AuthenticationSignedOutUseCase(this.authenticationRepository);

  Future<AuthenticationState> execute() async {
   await authenticationRepository.signOut();
   return const AuthenticationState.failure();
  }
}