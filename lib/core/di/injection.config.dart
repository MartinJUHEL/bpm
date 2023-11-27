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
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i18;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i16;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i17;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i24;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i25;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i21;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i32;
import '../../home/presentation/bloc/home_bloc.dart' as _i8;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i28;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i29;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i27;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i30;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i26;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i9;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i10;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i11;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i22;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i31;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i23;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i33;
import '../data/repositories/user_repository_impl.dart' as _i20;
import '../data/services/firebase_service.dart' as _i6;
import '../data/services/local/user_local_service.dart' as _i13;
import '../data/services/remote/user_remote_service.dart' as _i15;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i14;
import '../domain/repositories/user_repository.dart' as _i19;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i7;
import '../utils/helpers/connectivity_helper.dart' as _i3;
import 'app_module.dart' as _i34;

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
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc());
  gh.factory<_i9.IsEmailValidUseCase>(() => _i9.IsEmailValidUseCase());
  gh.factory<_i10.IsNameValidUseCase>(() => _i10.IsNameValidUseCase());
  gh.factory<_i11.IsPasswordValidUseCase>(() => _i11.IsPasswordValidUseCase());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i13.UserLocalService>(
      () => _i13.UserLocalService(gh<_i12.SharedPreferences>()));
  gh.factory<_i14.UserModelFirestoreToModelMapper>(() =>
      _i14.UserModelFirestoreToModelMapper(
          gh<_i7.GetUserTypeFromStringUseCase>()));
  gh.factory<_i15.UserRemoteService>(() => _i15.UserRemoteService(
        gh<_i5.FirebaseFirestore>(),
        gh<_i14.UserModelFirestoreToModelMapper>(),
        gh<_i4.FirebaseAuth>(),
      ));
  gh.factory<_i16.AuthenticationRemoteService>(
      () => _i16.AuthenticationRemoteService(gh<_i4.FirebaseAuth>()));
  gh.factory<_i17.IAuthenticationRepository>(() =>
      _i18.AuthenticationRepositoryImpl(
          gh<_i16.AuthenticationRemoteService>()));
  gh.factory<_i19.IUserRepository>(() => _i20.UserRepositoryImpl(
        gh<_i15.UserRemoteService>(),
        gh<_i13.UserLocalService>(),
      ));
  gh.factory<_i21.IsEmailVerifiedUseCase>(
      () => _i21.IsEmailVerifiedUseCase(gh<_i17.IAuthenticationRepository>()));
  gh.factory<_i22.SaveUserUseCase>(
      () => _i22.SaveUserUseCase(gh<_i19.IUserRepository>()));
  gh.factory<_i23.SubmitSignupUseCase>(() => _i23.SubmitSignupUseCase(
        gh<_i9.IsEmailValidUseCase>(),
        gh<_i11.IsPasswordValidUseCase>(),
        gh<_i10.IsNameValidUseCase>(),
        gh<_i17.IAuthenticationRepository>(),
        gh<_i22.SaveUserUseCase>(),
      ));
  gh.factory<_i24.AuthenticationSignedOutUseCase>(() =>
      _i24.AuthenticationSignedOutUseCase(
          gh<_i17.IAuthenticationRepository>()));
  gh.factory<_i25.AuthenticationStartedUseCase>(
      () => _i25.AuthenticationStartedUseCase(
            gh<_i17.IAuthenticationRepository>(),
            gh<_i21.IsEmailVerifiedUseCase>(),
            gh<_i19.IUserRepository>(),
          ));
  gh.factory<_i26.FetchAndSaveUserLocalUseCase>(
      () => _i26.FetchAndSaveUserLocalUseCase(gh<_i19.IUserRepository>()));
  gh.factory<_i27.GetResetPasswordStateUseCase>(() =>
      _i27.GetResetPasswordStateUseCase(gh<_i17.IAuthenticationRepository>()));
  gh.factory<_i28.GetUserNameUseCase>(
      () => _i28.GetUserNameUseCase(gh<_i19.IUserRepository>()));
  gh.factory<_i29.ProfilBloc>(
      () => _i29.ProfilBloc(gh<_i28.GetUserNameUseCase>()));
  gh.factory<_i30.ResetPasswordBloc>(
      () => _i30.ResetPasswordBloc(gh<_i27.GetResetPasswordStateUseCase>()));
  gh.factory<_i31.SubmitSigninUseCase>(() => _i31.SubmitSigninUseCase(
        gh<_i9.IsEmailValidUseCase>(),
        gh<_i11.IsPasswordValidUseCase>(),
        gh<_i10.IsNameValidUseCase>(),
        gh<_i17.IAuthenticationRepository>(),
        gh<_i26.FetchAndSaveUserLocalUseCase>(),
      ));
  gh.factory<_i32.AuthenticationBloc>(() => _i32.AuthenticationBloc(
        gh<_i25.AuthenticationStartedUseCase>(),
        gh<_i24.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i33.SignupBloc>(() => _i33.SignupBloc(
        gh<_i9.IsEmailValidUseCase>(),
        gh<_i11.IsPasswordValidUseCase>(),
        gh<_i10.IsNameValidUseCase>(),
        gh<_i23.SubmitSignupUseCase>(),
        gh<_i31.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i34.AppModule {}
