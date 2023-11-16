import 'package:bpm/Authentication/domain/repositories/authentication_repository.dart';
import 'package:bpm/reset_password/presentation/bloc/reset_password_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetResetPasswordStateUseCase {
  final IAuthenticationRepository _authenticationRepository;

  GetResetPasswordStateUseCase(this._authenticationRepository);

  Future<ResetPasswordState> execute(String email) async {
    try {
      //todo get if email exist
      if (false) {
        return ResetPasswordState(
            error: tr('emailInvalid'), status: ResetPasswordStatus.failure);
      }
      await _authenticationRepository.resetPassword(email);
      return const ResetPasswordState(status: ResetPasswordStatus.success);
    } catch (e) {
      return ResetPasswordState(
          error: tr('errorOccured'), status: ResetPasswordStatus.failure);
    }
  }
}
