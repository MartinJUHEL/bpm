// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i15;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i13;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i14;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i19;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i20;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i16;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i24;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i21;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i22;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i10;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i11;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i12;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i17;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i18;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i23;
import '../data/repositories/user_repository_impl.dart' as _i9;
import '../data/services/firebase_service.dart' as _i6;
import '../domain/repositories/user_repository.dart' as _i8;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i7;
import '../utils/helpers/connectivity_helper.dart' as _i3;
import 'app_module.dart' as _i25;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.ConnectivityCheckerHelper>(
      () => _i3.ConnectivityCheckerHelper());
  gh.factory<_i4.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i5.FirebaseFirestore>(() => appModule.store);
  await gh.factoryAsync<_i6.FirebaseService>(
    () => appModule.fireService,
    preResolve: true,
  );
  gh.factory<_i7.GetUserTypeFromStringUseCase>(
      () => _i7.GetUserTypeFromStringUseCase());
  gh.factory<_i8.IUserRepository>(() => _i9.UserRepositoryImpl());
  gh.factory<_i10.IsEmailValidUseCase>(() => _i10.IsEmailValidUseCase());
  gh.factory<_i11.IsNameValidUseCase>(() => _i11.IsNameValidUseCase());
  gh.factory<_i12.IsPasswordValidUseCase>(() => _i12.IsPasswordValidUseCase());
  gh.factory<_i13.AuthenticationRemoteService>(
      () => _i13.AuthenticationRemoteService(gh<_i4.FirebaseAuth>()));
  gh.factory<_i14.IAuthenticationRepository>(() =>
      _i15.AuthenticationRepositoryImpl(
          gh<_i13.AuthenticationRemoteService>()));
  gh.factory<_i16.IsEmailVerifiedUseCase>(
      () => _i16.IsEmailVerifiedUseCase(gh<_i14.IAuthenticationRepository>()));
  gh.factory<_i17.SubmitSigninUseCase>(() => _i17.SubmitSigninUseCase(
        gh<_i10.IsEmailValidUseCase>(),
        gh<_i12.IsPasswordValidUseCase>(),
        gh<_i11.IsNameValidUseCase>(),
        gh<_i14.IAuthenticationRepository>(),
      ));
  gh.factory<_i18.SubmitSignupUseCase>(() => _i18.SubmitSignupUseCase(
        gh<_i10.IsEmailValidUseCase>(),
        gh<_i12.IsPasswordValidUseCase>(),
        gh<_i11.IsNameValidUseCase>(),
        gh<_i14.IAuthenticationRepository>(),
      ));
  gh.factory<_i19.AuthenticationSignedOutUseCase>(() =>
      _i19.AuthenticationSignedOutUseCase(
          gh<_i14.IAuthenticationRepository>()));
  gh.factory<_i20.AuthenticationStartedUseCase>(
      () => _i20.AuthenticationStartedUseCase(
            gh<_i14.IAuthenticationRepository>(),
            gh<_i16.IsEmailVerifiedUseCase>(),
          ));
  gh.factory<_i21.GetResetPasswordStateUseCase>(() =>
      _i21.GetResetPasswordStateUseCase(gh<_i14.IAuthenticationRepository>()));
  gh.factory<_i22.ResetPasswordBloc>(
      () => _i22.ResetPasswordBloc(gh<_i21.GetResetPasswordStateUseCase>()));
  gh.factory<_i23.SignupBloc>(() => _i23.SignupBloc(
        gh<_i10.IsEmailValidUseCase>(),
        gh<_i12.IsPasswordValidUseCase>(),
        gh<_i11.IsNameValidUseCase>(),
        gh<_i18.SubmitSignupUseCase>(),
        gh<_i17.SubmitSigninUseCase>(),
      ));
  gh.factory<_i24.AuthenticationBloc>(() => _i24.AuthenticationBloc(
        gh<_i20.AuthenticationStartedUseCase>(),
        gh<_i19.AuthenticationSignedOutUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i25.AppModule {}
