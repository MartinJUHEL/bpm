// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i23;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i30;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i28;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i29;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i39;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i40;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i35;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i49;
import '../../home/presentation/bloc/home_bloc.dart' as _i12;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i44;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i45;
import '../../publish_ad/domain/usecases/build_photo_from_file_use_case.dart'
    as _i3;
import '../../publish_ad/domain/usecases/get_api_key_use_case.dart' as _i10;
import '../../publish_ad/domain/usecases/get_city_suggestions_use_case.dart'
    as _i42;
import '../../publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i13;
import '../../publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i14;
import '../../publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i18;
import '../../publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i19;
import '../../publish_ad/domain/usecases/remove_photo_from_storage_use_case.dart'
    as _i22;
import '../../publish_ad/domain/usecases/upload_photo_to_storage_use_case.dart'
    as _i24;
import '../../publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i21;
import '../../publish_ad/presentation/blocs/publish_ad_search_city_bloc/publish_ad_search_city_bloc.dart'
    as _i46;
import '../../publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart'
    as _i38;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i43;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i47;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i41;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i15;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i16;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i17;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i36;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i48;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i37;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i50;
import '../data/repositories/place_repository_impl.dart' as _i32;
import '../data/repositories/user_repository_impl.dart' as _i34;
import '../data/services/firebase_service.dart' as _i8;
import '../data/services/local/user_local_service.dart' as _i25;
import '../data/services/remote/place_api_service.dart' as _i20;
import '../data/services/remote/user_remote_service.dart' as _i27;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i26;
import '../domain/repositories/place_repository.dart' as _i31;
import '../domain/repositories/user_repository.dart' as _i33;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i11;
import '../utils/helpers/connectivity_helper.dart' as _i4;
import 'app_module.dart' as _i51;

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
  gh.factory<_i6.FirebaseCrashlytics>(() => appModule.crashlytics);
  gh.factory<_i7.FirebaseFirestore>(() => appModule.store);
  await gh.factoryAsync<_i8.FirebaseService>(
    () => appModule.fireService,
    preResolve: true,
  );
  gh.factory<_i9.FirebaseStorage>(() => appModule.storage);
  gh.factory<_i10.GetApiKeyUseCase>(() => _i10.GetApiKeyUseCase());
  gh.factory<_i11.GetUserTypeFromStringUseCase>(
      () => _i11.GetUserTypeFromStringUseCase());
  gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc());
  gh.factory<_i13.IsAdDescriptionValidUseCase>(
      () => _i13.IsAdDescriptionValidUseCase());
  gh.factory<_i14.IsAdTitleValidUseCase>(() => _i14.IsAdTitleValidUseCase());
  gh.factory<_i15.IsEmailValidUseCase>(() => _i15.IsEmailValidUseCase());
  gh.factory<_i16.IsNameValidUseCase>(() => _i16.IsNameValidUseCase());
  gh.factory<_i17.IsPasswordValidUseCase>(() => _i17.IsPasswordValidUseCase());
  gh.factory<_i18.PickPhotoFromCameraUseCase>(
      () => _i18.PickPhotoFromCameraUseCase());
  gh.factory<_i19.PickPhotosFromGalleryUseCase>(
      () => _i19.PickPhotosFromGalleryUseCase());
  gh.factory<_i20.PlaceApiService>(
      () => _i20.PlaceApiService(gh<_i10.GetApiKeyUseCase>()));
  gh.factory<_i21.PublishAdBloc>(() => _i21.PublishAdBloc(
        gh<_i14.IsAdTitleValidUseCase>(),
        gh<_i13.IsAdDescriptionValidUseCase>(),
      ));
  gh.factory<_i22.RemovePhotosFromStorageUseCase>(
      () => _i22.RemovePhotosFromStorageUseCase(gh<_i9.FirebaseStorage>()));
  await gh.factoryAsync<_i23.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i24.UploadPhotosToStorageUseCase>(
      () => _i24.UploadPhotosToStorageUseCase(gh<_i9.FirebaseStorage>()));
  gh.factory<_i25.UserLocalService>(
      () => _i25.UserLocalService(gh<_i23.SharedPreferences>()));
  gh.factory<_i26.UserModelFirestoreToModelMapper>(() =>
      _i26.UserModelFirestoreToModelMapper(
          gh<_i11.GetUserTypeFromStringUseCase>()));
  gh.factory<_i27.UserRemoteService>(() => _i27.UserRemoteService(
        gh<_i7.FirebaseFirestore>(),
        gh<_i26.UserModelFirestoreToModelMapper>(),
        gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i28.AuthenticationRemoteService>(
      () => _i28.AuthenticationRemoteService(gh<_i5.FirebaseAuth>()));
  gh.factory<_i29.IAuthenticationRepository>(() =>
      _i30.AuthenticationRepositoryImpl(
          gh<_i28.AuthenticationRemoteService>()));
  gh.factory<_i31.IPlaceRepository>(
      () => _i32.PlaceRepositoryImpl(gh<_i20.PlaceApiService>()));
  gh.factory<_i33.IUserRepository>(() => _i34.UserRepositoryImpl(
        gh<_i27.UserRemoteService>(),
        gh<_i25.UserLocalService>(),
      ));
  gh.factory<_i35.IsEmailVerifiedUseCase>(
      () => _i35.IsEmailVerifiedUseCase(gh<_i29.IAuthenticationRepository>()));
  gh.factory<_i36.SaveUserUseCase>(
      () => _i36.SaveUserUseCase(gh<_i33.IUserRepository>()));
  gh.factory<_i37.SubmitSignupUseCase>(() => _i37.SubmitSignupUseCase(
        gh<_i15.IsEmailValidUseCase>(),
        gh<_i17.IsPasswordValidUseCase>(),
        gh<_i16.IsNameValidUseCase>(),
        gh<_i29.IAuthenticationRepository>(),
        gh<_i36.SaveUserUseCase>(),
      ));
  gh.factory<_i38.UploadPhotosBloc>(() => _i38.UploadPhotosBloc(
        gh<_i24.UploadPhotosToStorageUseCase>(),
        gh<_i18.PickPhotoFromCameraUseCase>(),
        gh<_i19.PickPhotosFromGalleryUseCase>(),
        gh<_i22.RemovePhotosFromStorageUseCase>(),
        gh<_i3.BuildPhotoFromFileUseCase>(),
      ));
  gh.factory<_i39.AuthenticationSignedOutUseCase>(() =>
      _i39.AuthenticationSignedOutUseCase(
          gh<_i29.IAuthenticationRepository>()));
  gh.factory<_i40.AuthenticationStartedUseCase>(
      () => _i40.AuthenticationStartedUseCase(
            gh<_i29.IAuthenticationRepository>(),
            gh<_i35.IsEmailVerifiedUseCase>(),
            gh<_i33.IUserRepository>(),
          ));
  gh.factory<_i41.FetchAndSaveUserLocalUseCase>(
      () => _i41.FetchAndSaveUserLocalUseCase(gh<_i33.IUserRepository>()));
  gh.factory<_i42.GetCitySuggestionsUseCase>(
      () => _i42.GetCitySuggestionsUseCase(gh<_i31.IPlaceRepository>()));
  gh.factory<_i43.GetResetPasswordStateUseCase>(() =>
      _i43.GetResetPasswordStateUseCase(gh<_i29.IAuthenticationRepository>()));
  gh.factory<_i44.GetUserNameUseCase>(
      () => _i44.GetUserNameUseCase(gh<_i33.IUserRepository>()));
  gh.factory<_i45.ProfilBloc>(
      () => _i45.ProfilBloc(gh<_i44.GetUserNameUseCase>()));
  gh.factory<_i46.PublishAdSearchCityBloc>(
      () => _i46.PublishAdSearchCityBloc(gh<_i42.GetCitySuggestionsUseCase>()));
  gh.factory<_i47.ResetPasswordBloc>(
      () => _i47.ResetPasswordBloc(gh<_i43.GetResetPasswordStateUseCase>()));
  gh.factory<_i48.SubmitSigninUseCase>(() => _i48.SubmitSigninUseCase(
        gh<_i15.IsEmailValidUseCase>(),
        gh<_i17.IsPasswordValidUseCase>(),
        gh<_i29.IAuthenticationRepository>(),
        gh<_i41.FetchAndSaveUserLocalUseCase>(),
        gh<_i39.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i49.AuthenticationBloc>(() => _i49.AuthenticationBloc(
        gh<_i40.AuthenticationStartedUseCase>(),
        gh<_i39.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i50.SignupBloc>(() => _i50.SignupBloc(
        gh<_i15.IsEmailValidUseCase>(),
        gh<_i17.IsPasswordValidUseCase>(),
        gh<_i16.IsNameValidUseCase>(),
        gh<_i37.SubmitSignupUseCase>(),
        gh<_i48.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i51.AppModule {}
