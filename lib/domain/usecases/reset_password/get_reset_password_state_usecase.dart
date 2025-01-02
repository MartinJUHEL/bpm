import 'package:assoshare/core/domain/entities/common_status.dart';
import 'package:assoshare/domain/repositories/authentication_repository.dart';
import 'package:assoshare/presentation/blocs/reset_password/reset_password_bloc.dart';
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
        return ResetPasswordState(error: tr('emailInvalid'), status: CommonStatus.failure);
      }
      await _authenticationRepository.resetPassword(email);
      return const ResetPasswordState(status: CommonStatus.success);
    } catch (e) {
      return ResetPasswordState(error: tr('errorOccurred'), status: CommonStatus.failure);
    }
  }
}
