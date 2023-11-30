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
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i21;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i19;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i20;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i27;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i28;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i24;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i35;
import '../../home/presentation/bloc/home_bloc.dart' as _i8;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i31;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i32;
import '../../publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i9;
import '../../publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i10;
import '../../publish_ad/presentation/bloc/publish_ad_bloc.dart' as _i14;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i30;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i33;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i29;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i11;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i12;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i13;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i25;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i34;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i26;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i36;
import '../data/repositories/user_repository_impl.dart' as _i23;
import '../data/services/firebase_service.dart' as _i6;
import '../data/services/local/user_local_service.dart' as _i16;
import '../data/services/remote/user_remote_service.dart' as _i18;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i17;
import '../domain/repositories/user_repository.dart' as _i22;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i7;
import '../utils/helpers/connectivity_helper.dart' as _i3;
import 'app_module.dart' as _i37;

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
  gh.factory<_i9.IsAdDescriptionValidUseCase>(
      () => _i9.IsAdDescriptionValidUseCase());
  gh.factory<_i10.IsAdTitleValidUseCase>(() => _i10.IsAdTitleValidUseCase());
  gh.factory<_i11.IsEmailValidUseCase>(() => _i11.IsEmailValidUseCase());
  gh.factory<_i12.IsNameValidUseCase>(() => _i12.IsNameValidUseCase());
  gh.factory<_i13.IsPasswordValidUseCase>(() => _i13.IsPasswordValidUseCase());
  gh.factory<_i14.PublishAdBloc>(() => _i14.PublishAdBloc(
        gh<_i10.IsAdTitleValidUseCase>(),
        gh<_i9.IsAdDescriptionValidUseCase>(),
      ));
  await gh.factoryAsync<_i15.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i16.UserLocalService>(
      () => _i16.UserLocalService(gh<_i15.SharedPreferences>()));
  gh.factory<_i17.UserModelFirestoreToModelMapper>(() =>
      _i17.UserModelFirestoreToModelMapper(
          gh<_i7.GetUserTypeFromStringUseCase>()));
  gh.factory<_i18.UserRemoteService>(() => _i18.UserRemoteService(
        gh<_i5.FirebaseFirestore>(),
        gh<_i17.UserModelFirestoreToModelMapper>(),
        gh<_i4.FirebaseAuth>(),
      ));
  gh.factory<_i19.AuthenticationRemoteService>(
      () => _i19.AuthenticationRemoteService(gh<_i4.FirebaseAuth>()));
  gh.factory<_i20.IAuthenticationRepository>(() =>
      _i21.AuthenticationRepositoryImpl(
          gh<_i19.AuthenticationRemoteService>()));
  gh.factory<_i22.IUserRepository>(() => _i23.UserRepositoryImpl(
        gh<_i18.UserRemoteService>(),
        gh<_i16.UserLocalService>(),
      ));
  gh.factory<_i24.IsEmailVerifiedUseCase>(
      () => _i24.IsEmailVerifiedUseCase(gh<_i20.IAuthenticationRepository>()));
  gh.factory<_i25.SaveUserUseCase>(
      () => _i25.SaveUserUseCase(gh<_i22.IUserRepository>()));
  gh.factory<_i26.SubmitSignupUseCase>(() => _i26.SubmitSignupUseCase(
        gh<_i11.IsEmailValidUseCase>(),
        gh<_i13.IsPasswordValidUseCase>(),
        gh<_i12.IsNameValidUseCase>(),
        gh<_i20.IAuthenticationRepository>(),
        gh<_i25.SaveUserUseCase>(),
      ));
  gh.factory<_i27.AuthenticationSignedOutUseCase>(() =>
      _i27.AuthenticationSignedOutUseCase(
          gh<_i20.IAuthenticationRepository>()));
  gh.factory<_i28.AuthenticationStartedUseCase>(
      () => _i28.AuthenticationStartedUseCase(
            gh<_i20.IAuthenticationRepository>(),
            gh<_i24.IsEmailVerifiedUseCase>(),
            gh<_i22.IUserRepository>(),
          ));
  gh.factory<_i29.FetchAndSaveUserLocalUseCase>(
      () => _i29.FetchAndSaveUserLocalUseCase(gh<_i22.IUserRepository>()));
  gh.factory<_i30.GetResetPasswordStateUseCase>(() =>
      _i30.GetResetPasswordStateUseCase(gh<_i20.IAuthenticationRepository>()));
  gh.factory<_i31.GetUserNameUseCase>(
      () => _i31.GetUserNameUseCase(gh<_i22.IUserRepository>()));
  gh.factory<_i32.ProfilBloc>(
      () => _i32.ProfilBloc(gh<_i31.GetUserNameUseCase>()));
  gh.factory<_i33.ResetPasswordBloc>(
      () => _i33.ResetPasswordBloc(gh<_i30.GetResetPasswordStateUseCase>()));
  gh.factory<_i34.SubmitSigninUseCase>(() => _i34.SubmitSigninUseCase(
        gh<_i11.IsEmailValidUseCase>(),
        gh<_i13.IsPasswordValidUseCase>(),
        gh<_i20.IAuthenticationRepository>(),
        gh<_i29.FetchAndSaveUserLocalUseCase>(),
        gh<_i27.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i35.AuthenticationBloc>(() => _i35.AuthenticationBloc(
        gh<_i28.AuthenticationStartedUseCase>(),
        gh<_i27.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i36.SignupBloc>(() => _i36.SignupBloc(
        gh<_i11.IsEmailValidUseCase>(),
        gh<_i13.IsPasswordValidUseCase>(),
        gh<_i12.IsNameValidUseCase>(),
        gh<_i26.SubmitSignupUseCase>(),
        gh<_i34.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i37.AppModule {}
