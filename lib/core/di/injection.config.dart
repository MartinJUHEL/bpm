// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i25;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i23;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i24;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i32;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i33;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i28;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i40;
import '../../home/presentation/bloc/home_bloc.dart' as _i9;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i36;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i37;
import '../../publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i10;
import '../../publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i11;
import '../../publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i15;
import '../../publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i16;
import '../../publish_ad/domain/usecases/upload_photos_use_case.dart' as _i19;
import '../../publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i17;
import '../../publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart'
    as _i31;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i35;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i38;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i34;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i12;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i13;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i14;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i29;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i39;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i30;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i41;
import '../data/repositories/user_repository_impl.dart' as _i27;
import '../data/services/firebase_service.dart' as _i6;
import '../data/services/local/user_local_service.dart' as _i20;
import '../data/services/remote/user_remote_service.dart' as _i22;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i21;
import '../domain/repositories/user_repository.dart' as _i26;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i8;
import '../utils/helpers/connectivity_helper.dart' as _i3;
import 'app_module.dart' as _i42;

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
  gh.factory<_i7.FirebaseStorage>(() => appModule.storage);
  gh.factory<_i8.GetUserTypeFromStringUseCase>(
      () => _i8.GetUserTypeFromStringUseCase());
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc());
  gh.factory<_i10.IsAdDescriptionValidUseCase>(
      () => _i10.IsAdDescriptionValidUseCase());
  gh.factory<_i11.IsAdTitleValidUseCase>(() => _i11.IsAdTitleValidUseCase());
  gh.factory<_i12.IsEmailValidUseCase>(() => _i12.IsEmailValidUseCase());
  gh.factory<_i13.IsNameValidUseCase>(() => _i13.IsNameValidUseCase());
  gh.factory<_i14.IsPasswordValidUseCase>(() => _i14.IsPasswordValidUseCase());
  gh.factory<_i15.PickPhotoFromCameraUseCase>(
      () => _i15.PickPhotoFromCameraUseCase());
  gh.factory<_i16.PickPhotosFromGalleryUseCase>(
      () => _i16.PickPhotosFromGalleryUseCase());
  gh.factory<_i17.PublishAdBloc>(() => _i17.PublishAdBloc(
        gh<_i11.IsAdTitleValidUseCase>(),
        gh<_i10.IsAdDescriptionValidUseCase>(),
      ));
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.UploadPhotosUseCase>(
      () => _i19.UploadPhotosUseCase(gh<_i7.FirebaseStorage>()));
  gh.factory<_i20.UserLocalService>(
      () => _i20.UserLocalService(gh<_i18.SharedPreferences>()));
  gh.factory<_i21.UserModelFirestoreToModelMapper>(() =>
      _i21.UserModelFirestoreToModelMapper(
          gh<_i8.GetUserTypeFromStringUseCase>()));
  gh.factory<_i22.UserRemoteService>(() => _i22.UserRemoteService(
        gh<_i5.FirebaseFirestore>(),
        gh<_i21.UserModelFirestoreToModelMapper>(),
        gh<_i4.FirebaseAuth>(),
      ));
  gh.factory<_i23.AuthenticationRemoteService>(
      () => _i23.AuthenticationRemoteService(gh<_i4.FirebaseAuth>()));
  gh.factory<_i24.IAuthenticationRepository>(() =>
      _i25.AuthenticationRepositoryImpl(
          gh<_i23.AuthenticationRemoteService>()));
  gh.factory<_i26.IUserRepository>(() => _i27.UserRepositoryImpl(
        gh<_i22.UserRemoteService>(),
        gh<_i20.UserLocalService>(),
      ));
  gh.factory<_i28.IsEmailVerifiedUseCase>(
      () => _i28.IsEmailVerifiedUseCase(gh<_i24.IAuthenticationRepository>()));
  gh.factory<_i29.SaveUserUseCase>(
      () => _i29.SaveUserUseCase(gh<_i26.IUserRepository>()));
  gh.factory<_i30.SubmitSignupUseCase>(() => _i30.SubmitSignupUseCase(
        gh<_i12.IsEmailValidUseCase>(),
        gh<_i14.IsPasswordValidUseCase>(),
        gh<_i13.IsNameValidUseCase>(),
        gh<_i24.IAuthenticationRepository>(),
        gh<_i29.SaveUserUseCase>(),
      ));
  gh.factory<_i31.UploadPhotosBloc>(() => _i31.UploadPhotosBloc(
        gh<_i19.UploadPhotosUseCase>(),
        gh<_i15.PickPhotoFromCameraUseCase>(),
        gh<_i16.PickPhotosFromGalleryUseCase>(),
      ));
  gh.factory<_i32.AuthenticationSignedOutUseCase>(() =>
      _i32.AuthenticationSignedOutUseCase(
          gh<_i24.IAuthenticationRepository>()));
  gh.factory<_i33.AuthenticationStartedUseCase>(
      () => _i33.AuthenticationStartedUseCase(
            gh<_i24.IAuthenticationRepository>(),
            gh<_i28.IsEmailVerifiedUseCase>(),
            gh<_i26.IUserRepository>(),
          ));
  gh.factory<_i34.FetchAndSaveUserLocalUseCase>(
      () => _i34.FetchAndSaveUserLocalUseCase(gh<_i26.IUserRepository>()));
  gh.factory<_i35.GetResetPasswordStateUseCase>(() =>
      _i35.GetResetPasswordStateUseCase(gh<_i24.IAuthenticationRepository>()));
  gh.factory<_i36.GetUserNameUseCase>(
      () => _i36.GetUserNameUseCase(gh<_i26.IUserRepository>()));
  gh.factory<_i37.ProfilBloc>(
      () => _i37.ProfilBloc(gh<_i36.GetUserNameUseCase>()));
  gh.factory<_i38.ResetPasswordBloc>(
      () => _i38.ResetPasswordBloc(gh<_i35.GetResetPasswordStateUseCase>()));
  gh.factory<_i39.SubmitSigninUseCase>(() => _i39.SubmitSigninUseCase(
        gh<_i12.IsEmailValidUseCase>(),
        gh<_i14.IsPasswordValidUseCase>(),
        gh<_i24.IAuthenticationRepository>(),
        gh<_i34.FetchAndSaveUserLocalUseCase>(),
        gh<_i32.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i40.AuthenticationBloc>(() => _i40.AuthenticationBloc(
        gh<_i33.AuthenticationStartedUseCase>(),
        gh<_i32.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i41.SignupBloc>(() => _i41.SignupBloc(
        gh<_i12.IsEmailValidUseCase>(),
        gh<_i14.IsPasswordValidUseCase>(),
        gh<_i13.IsNameValidUseCase>(),
        gh<_i30.SubmitSignupUseCase>(),
        gh<_i39.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i42.AppModule {}
