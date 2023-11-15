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
    as _i12;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i10;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i11;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i15;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i16;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i18;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i7;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i8;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i9;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i13;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i14;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i17;
import '../data/services/firebase_service.dart' as _i6;
import '../utils/helpers/connectivity_helper.dart' as _i3;
import 'app_module.dart' as _i19;

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
  gh.factory<_i7.IsEmailValidUseCase>(() => _i7.IsEmailValidUseCase());
  gh.factory<_i8.IsNameValidUseCase>(() => _i8.IsNameValidUseCase());
  gh.factory<_i9.IsPasswordValidUseCase>(() => _i9.IsPasswordValidUseCase());
  gh.factory<_i10.AuthenticationRemoteService>(
      () => _i10.AuthenticationRemoteService(gh<_i4.FirebaseAuth>()));
  gh.factory<_i11.IAuthenticationRepository>(() =>
      _i12.AuthenticationRepositoryImpl(
          gh<_i10.AuthenticationRemoteService>()));
  gh.factory<_i13.SubmitSigninUseCase>(() => _i13.SubmitSigninUseCase(
        gh<_i7.IsEmailValidUseCase>(),
        gh<_i9.IsPasswordValidUseCase>(),
        gh<_i8.IsNameValidUseCase>(),
        gh<_i11.IAuthenticationRepository>(),
      ));
  gh.factory<_i14.SubmitSignupUseCase>(() => _i14.SubmitSignupUseCase(
        gh<_i7.IsEmailValidUseCase>(),
        gh<_i9.IsPasswordValidUseCase>(),
        gh<_i8.IsNameValidUseCase>(),
        gh<_i11.IAuthenticationRepository>(),
      ));
  gh.factory<_i15.AuthenticationSignedOutUseCase>(() =>
      _i15.AuthenticationSignedOutUseCase(
          gh<_i11.IAuthenticationRepository>()));
  gh.factory<_i16.AuthenticationStartedUseCase>(() =>
      _i16.AuthenticationStartedUseCase(gh<_i11.IAuthenticationRepository>()));
  gh.factory<_i17.SignupBloc>(() => _i17.SignupBloc(
        gh<_i7.IsEmailValidUseCase>(),
        gh<_i9.IsPasswordValidUseCase>(),
        gh<_i8.IsNameValidUseCase>(),
        gh<_i14.SubmitSignupUseCase>(),
        gh<_i13.SubmitSigninUseCase>(),
      ));
  gh.factory<_i18.AuthenticationBloc>(() => _i18.AuthenticationBloc(
        gh<_i16.AuthenticationStartedUseCase>(),
        gh<_i15.AuthenticationSignedOutUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i19.AppModule {}
