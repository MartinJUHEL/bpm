import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:bpm/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:bpm/core/domain/entities/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationStartedUseCase {
  final IAuthenticationRepository authenticationRepository;

  AuthenticationStartedUseCase(this.authenticationRepository);

  Future<AuthenticationState> execute() async {
    User? user = await authenticationRepository.getCurrentUser().first;
    if (user != null) {
      //todo retrieve userModel on firestore
      return AuthenticationState.success(user.displayName);
    } else {
      return const AuthenticationState.failure();
    }
  }
}
