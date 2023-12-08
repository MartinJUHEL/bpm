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
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i28;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i26;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i27;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i35;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i36;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i31;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i43;
import '../../home/presentation/bloc/home_bloc.dart' as _i11;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i39;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i40;
import '../../publish_ad/domain/usecases/build_photo_from_file_use_case.dart'
    as _i3;
import '../../publish_ad/domain/usecases/get_photo_url_use_case.dart' as _i9;
import '../../publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i12;
import '../../publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i13;
import '../../publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i17;
import '../../publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i18;
import '../../publish_ad/domain/usecases/remove_photo_use_case.dart' as _i20;
import '../../publish_ad/domain/usecases/upload_photo_use_case.dart' as _i22;
import '../../publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i19;
import '../../publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart'
    as _i34;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i38;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i41;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i37;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i14;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i15;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i16;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i32;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i42;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i33;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i44;
import '../data/repositories/user_repository_impl.dart' as _i30;
import '../data/services/firebase_service.dart' as _i7;
import '../data/services/local/user_local_service.dart' as _i23;
import '../data/services/remote/user_remote_service.dart' as _i25;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i24;
import '../domain/repositories/user_repository.dart' as _i29;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i10;
import '../utils/helpers/connectivity_helper.dart' as _i4;
import 'app_module.dart' as _i45;

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
  gh.factory<_i9.GetPhotoUrlUseCase>(
      () => _i9.GetPhotoUrlUseCase(gh<_i8.FirebaseStorage>()));
  gh.factory<_i10.GetUserTypeFromStringUseCase>(
      () => _i10.GetUserTypeFromStringUseCase());
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc());
  gh.factory<_i12.IsAdDescriptionValidUseCase>(
      () => _i12.IsAdDescriptionValidUseCase());
  gh.factory<_i13.IsAdTitleValidUseCase>(() => _i13.IsAdTitleValidUseCase());
  gh.factory<_i14.IsEmailValidUseCase>(() => _i14.IsEmailValidUseCase());
  gh.factory<_i15.IsNameValidUseCase>(() => _i15.IsNameValidUseCase());
  gh.factory<_i16.IsPasswordValidUseCase>(() => _i16.IsPasswordValidUseCase());
  gh.factory<_i17.PickPhotoFromCameraUseCase>(
      () => _i17.PickPhotoFromCameraUseCase());
  gh.factory<_i18.PickPhotosFromGalleryUseCase>(
      () => _i18.PickPhotosFromGalleryUseCase());
  gh.factory<_i19.PublishAdBloc>(() => _i19.PublishAdBloc(
        gh<_i13.IsAdTitleValidUseCase>(),
        gh<_i12.IsAdDescriptionValidUseCase>(),
      ));
  gh.factory<_i20.RemovePhotosUseCase>(
      () => _i20.RemovePhotosUseCase(gh<_i8.FirebaseStorage>()));
  await gh.factoryAsync<_i21.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i22.UploadPhotosUseCase>(
      () => _i22.UploadPhotosUseCase(gh<_i8.FirebaseStorage>()));
  gh.factory<_i23.UserLocalService>(
      () => _i23.UserLocalService(gh<_i21.SharedPreferences>()));
  gh.factory<_i24.UserModelFirestoreToModelMapper>(() =>
      _i24.UserModelFirestoreToModelMapper(
          gh<_i10.GetUserTypeFromStringUseCase>()));
  gh.factory<_i25.UserRemoteService>(() => _i25.UserRemoteService(
        gh<_i6.FirebaseFirestore>(),
        gh<_i24.UserModelFirestoreToModelMapper>(),
        gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i26.AuthenticationRemoteService>(
      () => _i26.AuthenticationRemoteService(gh<_i5.FirebaseAuth>()));
  gh.factory<_i27.IAuthenticationRepository>(() =>
      _i28.AuthenticationRepositoryImpl(
          gh<_i26.AuthenticationRemoteService>()));
  gh.factory<_i29.IUserRepository>(() => _i30.UserRepositoryImpl(
        gh<_i25.UserRemoteService>(),
        gh<_i23.UserLocalService>(),
      ));
  gh.factory<_i31.IsEmailVerifiedUseCase>(
      () => _i31.IsEmailVerifiedUseCase(gh<_i27.IAuthenticationRepository>()));
  gh.factory<_i32.SaveUserUseCase>(
      () => _i32.SaveUserUseCase(gh<_i29.IUserRepository>()));
  gh.factory<_i33.SubmitSignupUseCase>(() => _i33.SubmitSignupUseCase(
        gh<_i14.IsEmailValidUseCase>(),
        gh<_i16.IsPasswordValidUseCase>(),
        gh<_i15.IsNameValidUseCase>(),
        gh<_i27.IAuthenticationRepository>(),
        gh<_i32.SaveUserUseCase>(),
      ));
  gh.factory<_i34.UploadPhotosBloc>(() => _i34.UploadPhotosBloc(
        gh<_i22.UploadPhotosUseCase>(),
        gh<_i17.PickPhotoFromCameraUseCase>(),
        gh<_i18.PickPhotosFromGalleryUseCase>(),
        gh<_i20.RemovePhotosUseCase>(),
        gh<_i3.BuildPhotoFromFileUseCase>(),
        gh<_i9.GetPhotoUrlUseCase>(),
      ));
  gh.factory<_i35.AuthenticationSignedOutUseCase>(() =>
      _i35.AuthenticationSignedOutUseCase(
          gh<_i27.IAuthenticationRepository>()));
  gh.factory<_i36.AuthenticationStartedUseCase>(
      () => _i36.AuthenticationStartedUseCase(
            gh<_i27.IAuthenticationRepository>(),
            gh<_i31.IsEmailVerifiedUseCase>(),
            gh<_i29.IUserRepository>(),
          ));
  gh.factory<_i37.FetchAndSaveUserLocalUseCase>(
      () => _i37.FetchAndSaveUserLocalUseCase(gh<_i29.IUserRepository>()));
  gh.factory<_i38.GetResetPasswordStateUseCase>(() =>
      _i38.GetResetPasswordStateUseCase(gh<_i27.IAuthenticationRepository>()));
  gh.factory<_i39.GetUserNameUseCase>(
      () => _i39.GetUserNameUseCase(gh<_i29.IUserRepository>()));
  gh.factory<_i40.ProfilBloc>(
      () => _i40.ProfilBloc(gh<_i39.GetUserNameUseCase>()));
  gh.factory<_i41.ResetPasswordBloc>(
      () => _i41.ResetPasswordBloc(gh<_i38.GetResetPasswordStateUseCase>()));
  gh.factory<_i42.SubmitSigninUseCase>(() => _i42.SubmitSigninUseCase(
        gh<_i14.IsEmailValidUseCase>(),
        gh<_i16.IsPasswordValidUseCase>(),
        gh<_i27.IAuthenticationRepository>(),
        gh<_i37.FetchAndSaveUserLocalUseCase>(),
        gh<_i35.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i43.AuthenticationBloc>(() => _i43.AuthenticationBloc(
        gh<_i36.AuthenticationStartedUseCase>(),
        gh<_i35.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i44.SignupBloc>(() => _i44.SignupBloc(
        gh<_i14.IsEmailValidUseCase>(),
        gh<_i16.IsPasswordValidUseCase>(),
        gh<_i15.IsNameValidUseCase>(),
        gh<_i33.SubmitSignupUseCase>(),
        gh<_i42.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i45.AppModule {}
