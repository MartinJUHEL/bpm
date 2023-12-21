// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

import '../../Authentication/data/repositories/authentication_repository_impl.dart'
    as _i34;
import '../../Authentication/data/services/remote/authentication_remote_service.dart'
    as _i31;
import '../../Authentication/domain/repositories/authentication_repository.dart'
    as _i33;
import '../../Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i43;
import '../../Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i44;
import '../../Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i39;
import '../../Authentication/presentation/bloc/authentication_bloc.dart'
    as _i54;
import '../../home/presentation/bloc/home_bloc.dart' as _i14;
import '../../profil/domain/usecases/get_user_name_use_case.dart' as _i49;
import '../../profil/presentation/bloc/profil_bloc.dart' as _i50;
import '../../publish_ad/domain/usecases/build_photo_from_file_use_case.dart'
    as _i3;
import '../../publish_ad/domain/usecases/get_api_key_use_case.dart' as _i11;
import '../../publish_ad/domain/usecases/get_city_from_location_use_case.dart'
    as _i46;
import '../../publish_ad/domain/usecases/get_city_suggestions_use_case.dart'
    as _i47;
import '../../publish_ad/domain/usecases/get_location_from_city_use_case.dart'
    as _i12;
import '../../publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i15;
import '../../publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i16;
import '../../publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i20;
import '../../publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i21;
import '../../publish_ad/domain/usecases/remove_photo_from_storage_use_case.dart'
    as _i24;
import '../../publish_ad/domain/usecases/upload_photo_to_storage_use_case.dart'
    as _i27;
import '../../publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i23;
import '../../publish_ad/presentation/blocs/publish_ad_search_city_bloc/publish_ad_search_city_bloc.dart'
    as _i51;
import '../../publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart'
    as _i42;
import '../../reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i48;
import '../../reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i52;
import '../../signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i45;
import '../../signup/domain/usecases/is_email_valid_usecase.dart' as _i17;
import '../../signup/domain/usecases/is_name_valid_usecase.dart' as _i18;
import '../../signup/domain/usecases/is_password_valid_usecase.dart' as _i19;
import '../../signup/domain/usecases/save_user_usecase.dart' as _i40;
import '../../signup/domain/usecases/submit_signin_usecase.dart' as _i53;
import '../../signup/domain/usecases/submit_signup_usecase.dart' as _i41;
import '../../signup/presentation/bloc/signup_bloc.dart' as _i55;
import '../data/repositories/place_repository_impl.dart' as _i36;
import '../data/repositories/user_repository_impl.dart' as _i38;
import '../data/services/firebase_service.dart' as _i9;
import '../data/services/local/user_local_service.dart' as _i28;
import '../data/services/remote/place_api_service.dart' as _i22;
import '../data/services/remote/user_remote_service.dart' as _i30;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i29;
import '../domain/repositories/place_repository.dart' as _i35;
import '../domain/repositories/user_repository.dart' as _i37;
import '../domain/usecases/check_location_permission_use_case.dart' as _i4;
import '../domain/usecases/get_location_use_case.dart' as _i32;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i13;
import '../domain/usecases/request_location_permission_use_case.dart' as _i25;
import '../utils/helpers/connectivity_helper.dart' as _i5;
import 'app_module.dart' as _i56;

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
  gh.factory<_i4.CheckLocationPermissionUseCase>(
      () => _i4.CheckLocationPermissionUseCase());
  gh.factory<_i5.ConnectivityCheckerHelper>(
      () => _i5.ConnectivityCheckerHelper());
  gh.factory<_i6.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i7.FirebaseCrashlytics>(() => appModule.crashlytics);
  gh.factory<_i8.FirebaseFirestore>(() => appModule.store);
  await gh.factoryAsync<_i9.FirebaseService>(
    () => appModule.fireService,
    preResolve: true,
  );
  gh.factory<_i10.FirebaseStorage>(() => appModule.storage);
  gh.factory<_i11.GetApiKeyUseCase>(() => _i11.GetApiKeyUseCase());
  gh.factory<_i12.GetLocationFromCityUseCase>(
      () => _i12.GetLocationFromCityUseCase());
  gh.factory<_i13.GetUserTypeFromStringUseCase>(
      () => _i13.GetUserTypeFromStringUseCase());
  gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc());
  gh.factory<_i15.IsAdDescriptionValidUseCase>(
      () => _i15.IsAdDescriptionValidUseCase());
  gh.factory<_i16.IsAdTitleValidUseCase>(() => _i16.IsAdTitleValidUseCase());
  gh.factory<_i17.IsEmailValidUseCase>(() => _i17.IsEmailValidUseCase());
  gh.factory<_i18.IsNameValidUseCase>(() => _i18.IsNameValidUseCase());
  gh.factory<_i19.IsPasswordValidUseCase>(() => _i19.IsPasswordValidUseCase());
  gh.factory<_i20.PickPhotoFromCameraUseCase>(
      () => _i20.PickPhotoFromCameraUseCase());
  gh.factory<_i21.PickPhotosFromGalleryUseCase>(
      () => _i21.PickPhotosFromGalleryUseCase());
  gh.factory<_i22.PlaceApiService>(
      () => _i22.PlaceApiService(gh<_i11.GetApiKeyUseCase>()));
  gh.factory<_i23.PublishAdBloc>(() => _i23.PublishAdBloc(
        gh<_i16.IsAdTitleValidUseCase>(),
        gh<_i15.IsAdDescriptionValidUseCase>(),
      ));
  gh.factory<_i24.RemovePhotosFromStorageUseCase>(
      () => _i24.RemovePhotosFromStorageUseCase(gh<_i10.FirebaseStorage>()));
  gh.factory<_i25.RequestLocationPermissionUseCase>(
      () => _i25.RequestLocationPermissionUseCase());
  await gh.factoryAsync<_i26.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i27.UploadPhotosToStorageUseCase>(
      () => _i27.UploadPhotosToStorageUseCase(gh<_i10.FirebaseStorage>()));
  gh.factory<_i28.UserLocalService>(
      () => _i28.UserLocalService(gh<_i26.SharedPreferences>()));
  gh.factory<_i29.UserModelFirestoreToModelMapper>(() =>
      _i29.UserModelFirestoreToModelMapper(
          gh<_i13.GetUserTypeFromStringUseCase>()));
  gh.factory<_i30.UserRemoteService>(() => _i30.UserRemoteService(
        gh<_i8.FirebaseFirestore>(),
        gh<_i29.UserModelFirestoreToModelMapper>(),
        gh<_i6.FirebaseAuth>(),
      ));
  gh.factory<_i31.AuthenticationRemoteService>(
      () => _i31.AuthenticationRemoteService(gh<_i6.FirebaseAuth>()));
  gh.factory<_i32.GetLocationUseCase>(() => _i32.GetLocationUseCase(
        gh<_i4.CheckLocationPermissionUseCase>(),
        gh<_i25.RequestLocationPermissionUseCase>(),
      ));
  gh.factory<_i33.IAuthenticationRepository>(() =>
      _i34.AuthenticationRepositoryImpl(
          gh<_i31.AuthenticationRemoteService>()));
  gh.factory<_i35.IPlaceRepository>(
      () => _i36.PlaceRepositoryImpl(gh<_i22.PlaceApiService>()));
  gh.factory<_i37.IUserRepository>(() => _i38.UserRepositoryImpl(
        gh<_i30.UserRemoteService>(),
        gh<_i28.UserLocalService>(),
      ));
  gh.factory<_i39.IsEmailVerifiedUseCase>(
      () => _i39.IsEmailVerifiedUseCase(gh<_i33.IAuthenticationRepository>()));
  gh.factory<_i40.SaveUserUseCase>(
      () => _i40.SaveUserUseCase(gh<_i37.IUserRepository>()));
  gh.factory<_i41.SubmitSignupUseCase>(() => _i41.SubmitSignupUseCase(
        gh<_i17.IsEmailValidUseCase>(),
        gh<_i19.IsPasswordValidUseCase>(),
        gh<_i18.IsNameValidUseCase>(),
        gh<_i33.IAuthenticationRepository>(),
        gh<_i40.SaveUserUseCase>(),
      ));
  gh.factory<_i42.UploadPhotosBloc>(() => _i42.UploadPhotosBloc(
        gh<_i27.UploadPhotosToStorageUseCase>(),
        gh<_i20.PickPhotoFromCameraUseCase>(),
        gh<_i21.PickPhotosFromGalleryUseCase>(),
        gh<_i24.RemovePhotosFromStorageUseCase>(),
        gh<_i3.BuildPhotoFromFileUseCase>(),
      ));
  gh.factory<_i43.AuthenticationSignedOutUseCase>(() =>
      _i43.AuthenticationSignedOutUseCase(
          gh<_i33.IAuthenticationRepository>()));
  gh.factory<_i44.AuthenticationStartedUseCase>(
      () => _i44.AuthenticationStartedUseCase(
            gh<_i33.IAuthenticationRepository>(),
            gh<_i39.IsEmailVerifiedUseCase>(),
            gh<_i37.IUserRepository>(),
          ));
  gh.factory<_i45.FetchAndSaveUserLocalUseCase>(
      () => _i45.FetchAndSaveUserLocalUseCase(gh<_i37.IUserRepository>()));
  gh.factory<_i46.GetCityFromLocationUseCase>(
      () => _i46.GetCityFromLocationUseCase(gh<_i32.GetLocationUseCase>()));
  gh.factory<_i47.GetCitySuggestionsUseCase>(
      () => _i47.GetCitySuggestionsUseCase(gh<_i35.IPlaceRepository>()));
  gh.factory<_i48.GetResetPasswordStateUseCase>(() =>
      _i48.GetResetPasswordStateUseCase(gh<_i33.IAuthenticationRepository>()));
  gh.factory<_i49.GetUserNameUseCase>(
      () => _i49.GetUserNameUseCase(gh<_i37.IUserRepository>()));
  gh.factory<_i50.ProfilBloc>(
      () => _i50.ProfilBloc(gh<_i49.GetUserNameUseCase>()));
  gh.factory<_i51.PublishAdSearchCityBloc>(() => _i51.PublishAdSearchCityBloc(
        gh<_i47.GetCitySuggestionsUseCase>(),
        gh<_i46.GetCityFromLocationUseCase>(),
        gh<_i12.GetLocationFromCityUseCase>(),
      ));
  gh.factory<_i52.ResetPasswordBloc>(
      () => _i52.ResetPasswordBloc(gh<_i48.GetResetPasswordStateUseCase>()));
  gh.factory<_i53.SubmitSigninUseCase>(() => _i53.SubmitSigninUseCase(
        gh<_i17.IsEmailValidUseCase>(),
        gh<_i19.IsPasswordValidUseCase>(),
        gh<_i33.IAuthenticationRepository>(),
        gh<_i45.FetchAndSaveUserLocalUseCase>(),
        gh<_i43.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i54.AuthenticationBloc>(() => _i54.AuthenticationBloc(
        gh<_i44.AuthenticationStartedUseCase>(),
        gh<_i43.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i55.SignupBloc>(() => _i55.SignupBloc(
        gh<_i17.IsEmailValidUseCase>(),
        gh<_i19.IsPasswordValidUseCase>(),
        gh<_i18.IsNameValidUseCase>(),
        gh<_i41.SubmitSignupUseCase>(),
        gh<_i53.SubmitSigninUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i56.AppModule {}
