// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i27;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i25;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i26;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i34;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i35;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i30;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i42;
import '../../home/presentation/bloc/home_bloc.dart' as _i10;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i38;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i39;
import '../../publish_ad/domain/usecases/build_photo_from_file_use_case.dart'
    as _i3;
import '../../publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i11;
import '../../publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i12;
import '../../publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i16;
import '../../publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i17;
import '../../publish_ad/domain/usecases/remove_photo_from_storage_use_case.dart'
    as _i19;
import '../../publish_ad/domain/usecases/upload_photo_to_storage_use_case.dart'
    as _i21;
import '../../publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i18;
import '../../publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart'
    as _i33;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i37;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i40;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i36;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i13;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i14;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i15;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i31;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i41;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i32;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i43;
import '../data/repositories/user_repository_impl.dart' as _i29;
import '../data/services/firebase_service.dart' as _i7;
import '../data/services/local/user_local_service.dart' as _i22;
import '../data/services/remote/user_remote_service.dart' as _i24;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i23;
import '../domain/repositories/user_repository.dart' as _i28;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i9;
import '../utils/helpers/connectivity_helper.dart' as _i4;
import 'app_module.dart' as _i44;

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
  gh.factory<_i3.BuildPhotoFromFileUseCase>(
      () => _i3.BuildPhotoFromFileUseCase());
  gh.factory<_i4.ConnectivityCheckerHelper>(
      () => _i4.ConnectivityCheckerHelper());
  gh.factory<_i5.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i6.FirebaseFirestore>(() => appModule.store);
  await gh.factoryAsync<_i7.FirebaseService>(
    () => appModule.fireService,
    preResolve: true,
  );
  gh.factory<_i8.FirebaseStorage>(() => appModule.storage);
  gh.factory<_i9.GetUserTypeFromStringUseCase>(
      () => _i9.GetUserTypeFromStringUseCase());
  gh.factory<_i10.HomeBloc>(() => _i10.HomeBloc());
  gh.factory<_i11.IsAdDescriptionValidUseCase>(
      () => _i11.IsAdDescriptionValidUseCase());
  gh.factory<_i12.IsAdTitleValidUseCase>(() => _i12.IsAdTitleValidUseCase());
  gh.factory<_i13.IsEmailValidUseCase>(() => _i13.IsEmailValidUseCase());
  gh.factory<_i14.IsNameValidUseCase>(() => _i14.IsNameValidUseCase());
  gh.factory<_i15.IsPasswordValidUseCase>(() => _i15.IsPasswordValidUseCase());
  gh.factory<_i16.PickPhotoFromCameraUseCase>(
      () => _i16.PickPhotoFromCameraUseCase());
  gh.factory<_i17.PickPhotosFromGalleryUseCase>(
      () => _i17.PickPhotosFromGalleryUseCase());
  gh.factory<_i18.PublishAdBloc>(() => _i18.PublishAdBloc(
        gh<_i12.IsAdTitleValidUseCase>(),
        gh<_i11.IsAdDescriptionValidUseCase>(),
      ));
  gh.factory<_i19.RemovePhotosFromStorageUseCase>(
      () => _i19.RemovePhotosFromStorageUseCase(gh<_i8.FirebaseStorage>()));
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i21.UploadPhotosToStorageUseCase>(
      () => _i21.UploadPhotosToStorageUseCase(gh<_i8.FirebaseStorage>()));
  gh.factory<_i22.UserLocalService>(
      () => _i22.UserLocalService(gh<_i20.SharedPreferences>()));
  gh.factory<_i23.UserModelFirestoreToModelMapper>(() =>
      _i23.UserModelFirestoreToModelMapper(
          gh<_i9.GetUserTypeFromStringUseCase>()));
  gh.factory<_i24.UserRemoteService>(() => _i24.UserRemoteService(
        gh<_i6.FirebaseFirestore>(),
        gh<_i23.UserModelFirestoreToModelMapper>(),
        gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i25.AuthenticationRemoteService>(
      () => _i25.AuthenticationRemoteService(gh<_i5.FirebaseAuth>()));
  gh.factory<_i26.IAuthenticationRepository>(() =>
      _i27.AuthenticationRepositoryImpl(
          gh<_i25.AuthenticationRemoteService>()));
  gh.factory<_i28.IUserRepository>(() => _i29.UserRepositoryImpl(
        gh<_i24.UserRemoteService>(),
        gh<_i22.UserLocalService>(),
      ));
  gh.factory<_i30.IsEmailVerifiedUseCase>(
      () => _i30.IsEmailVerifiedUseCase(gh<_i26.IAuthenticationRepository>()));
  gh.factory<_i31.SaveUserUseCase>(
      () => _i31.SaveUserUseCase(gh<_i28.IUserRepository>()));
  gh.factory<_i32.SubmitSignupUseCase>(() => _i32.SubmitSignupUseCase(
        gh<_i13.IsEmailValidUseCase>(),
        gh<_i15.IsPasswordValidUseCase>(),
        gh<_i14.IsNameValidUseCase>(),
        gh<_i26.IAuthenticationRepository>(),
        gh<_i31.SaveUserUseCase>(),
      ));
  gh.factory<_i33.UploadPhotosBloc>(() => _i33.UploadPhotosBloc(
        gh<_i21.UploadPhotosToStorageUseCase>(),
        gh<_i16.PickPhotoFromCameraUseCase>(),
        gh<_i17.PickPhotosFromGalleryUseCase>(),
        gh<_i19.RemovePhotosFromStorageUseCase>(),
        gh<_i3.BuildPhotoFromFileUseCase>(),
      ));
  gh.factory<_i34.AuthenticationSignedOutUseCase>(() =>
      _i34.AuthenticationSignedOutUseCase(
          gh<_i26.IAuthenticationRepository>()));
  gh.factory<_i35.AuthenticationStartedUseCase>(
      () => _i35.AuthenticationStartedUseCase(
            gh<_i26.IAuthenticationRepository>(),
            gh<_i30.IsEmailVerifiedUseCase>(),
            gh<_i28.IUserRepository>(),
          ));
  gh.factory<_i36.FetchAndSaveUserLocalUseCase>(
      () => _i36.FetchAndSaveUserLocalUseCase(gh<_i28.IUserRepository>()));
  gh.factory<_i37.GetResetPasswordStateUseCase>(() =>
      _i37.GetResetPasswordStateUseCase(gh<_i26.IAuthenticationRepository>()));
  gh.factory<_i38.GetUserNameUseCase>(
      () => _i38.GetUserNameUseCase(gh<_i28.IUserRepository>()));
  gh.factory<_i39.ProfilBloc>(
      () => _i39.ProfilBloc(gh<_i38.GetUserNameUseCase>()));
  gh.factory<_i40.ResetPasswordBloc>(
      () => _i40.ResetPasswordBloc(gh<_i37.GetResetPasswordStateUseCase>()));
  gh.factory<_i41.SubmitSigninUseCase>(() => _i41.SubmitSigninUseCase(
        gh<_i13.IsEmailValidUseCase>(),
        gh<_i15.IsPasswordValidUseCase>(),
        gh<_i26.IAuthenticationRepository>(),
        gh<_i36.FetchAndSaveUserLocalUseCase>(),
        gh<_i34.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i42.AuthenticationBloc>(() => _i42.AuthenticationBloc(
        gh<_i35.AuthenticationStartedUseCase>(),
        gh<_i34.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i43.SignupBloc>(() => _i43.SignupBloc(
        gh<_i13.IsEmailValidUseCase>(),
        gh<_i15.IsPasswordValidUseCase>(),
        gh<_i14.IsNameValidUseCase>(),
        gh<_i32.SubmitSignupUseCase>(),
        gh<_i41.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i44.AppModule {}
