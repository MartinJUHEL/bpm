// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i141;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/Authentication/data/repositories/authentication_repository_impl.dart'
    as _i216;
import '../../features/Authentication/data/services/remote/authentication_remote_service.dart'
    as _i125;
import '../../features/Authentication/domain/repositories/authentication_repository.dart'
    as _i519;
import '../../features/Authentication/domain/usecases/authentication_signed_out_usecase.dart'
    as _i933;
import '../../features/Authentication/domain/usecases/authentication_started_usecase.dart'
    as _i550;
import '../../features/Authentication/domain/usecases/is_email_verified_usecase.dart'
    as _i917;
import '../../features/Authentication/presentation/bloc/authentication_bloc.dart'
    as _i842;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/profil/domain/usecases/get_user_name_use_case.dart'
    as _i197;
import '../../features/profil/presentation/bloc/profil_bloc.dart' as _i282;
import '../../features/publish_ad/domain/usecases/build_photo_from_file_use_case.dart'
    as _i519;
import '../../features/publish_ad/domain/usecases/get_api_key_use_case.dart'
    as _i84;
import '../../features/publish_ad/domain/usecases/get_city_from_location_use_case.dart'
    as _i498;
import '../../features/publish_ad/domain/usecases/get_city_suggestions_use_case.dart'
    as _i384;
import '../../features/publish_ad/domain/usecases/get_location_from_city_use_case.dart'
    as _i900;
import '../../features/publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i662;
import '../../features/publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i315;
import '../../features/publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i133;
import '../../features/publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i331;
import '../../features/publish_ad/domain/usecases/remove_photo_from_storage_use_case.dart'
    as _i270;
import '../../features/publish_ad/domain/usecases/upload_photo_to_storage_use_case.dart'
    as _i524;
import '../../features/publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i54;
import '../../features/publish_ad/presentation/blocs/publish_ad_search_city_bloc/publish_ad_search_city_bloc.dart'
    as _i837;
import '../../features/publish_ad/presentation/blocs/upload_photos_bloc/upload_photos_bloc.dart'
    as _i118;
import '../../features/reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i841;
import '../../features/reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i478;
import '../../features/signup/domain/usecases/fetch_and_save_user_local_usecase.dart'
    as _i951;
import '../../features/signup/domain/usecases/is_email_valid_usecase.dart'
    as _i949;
import '../../features/signup/domain/usecases/is_name_valid_usecase.dart'
    as _i411;
import '../../features/signup/domain/usecases/is_password_valid_usecase.dart'
    as _i61;
import '../../features/signup/domain/usecases/save_user_usecase.dart' as _i273;
import '../../features/signup/domain/usecases/submit_signin_usecase.dart'
    as _i628;
import '../../features/signup/domain/usecases/submit_signup_usecase.dart'
    as _i777;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i907;
import '../data/repositories/place_repository_impl.dart' as _i910;
import '../data/repositories/user_repository_impl.dart' as _i223;
import '../data/services/firebase_service.dart' as _i964;
import '../data/services/local/user_local_service.dart' as _i812;
import '../data/services/remote/place_api_service.dart' as _i91;
import '../data/services/remote/user_remote_service.dart' as _i815;
import '../domain/mappers/user_model_firestore_to_model_mapper.dart' as _i433;
import '../domain/repositories/place_repository.dart' as _i530;
import '../domain/repositories/user_repository.dart' as _i544;
import '../domain/usecases/check_location_permission_use_case.dart' as _i401;
import '../domain/usecases/get_location_use_case.dart' as _i493;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i164;
import '../domain/usecases/request_location_permission_use_case.dart' as _i1070;
import '../utils/helpers/connectivity_helper.dart' as _i999;
import 'app_module.dart' as _i460;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  await gh.factoryAsync<_i964.FirebaseService>(
    () => appModule.fireService,
    preResolve: true,
  );
  gh.factory<_i974.FirebaseFirestore>(() => appModule.store);
  gh.factory<_i141.FirebaseCrashlytics>(() => appModule.crashlytics);
  gh.factory<_i59.FirebaseAuth>(() => appModule.auth);
  gh.factory<_i457.FirebaseStorage>(() => appModule.storage);
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i999.ConnectivityCheckerHelper>(
      () => _i999.ConnectivityCheckerHelper());
  gh.factory<_i1070.RequestLocationPermissionUseCase>(
      () => _i1070.RequestLocationPermissionUseCase());
  gh.factory<_i164.GetUserTypeFromStringUseCase>(
      () => _i164.GetUserTypeFromStringUseCase());
  gh.factory<_i401.CheckLocationPermissionUseCase>(
      () => _i401.CheckLocationPermissionUseCase());
  gh.factory<_i202.HomeBloc>(() => _i202.HomeBloc());
  gh.factory<_i949.IsEmailValidUseCase>(() => _i949.IsEmailValidUseCase());
  gh.factory<_i61.IsPasswordValidUseCase>(() => _i61.IsPasswordValidUseCase());
  gh.factory<_i411.IsNameValidUseCase>(() => _i411.IsNameValidUseCase());
  gh.factory<_i900.GetLocationFromCityUseCase>(
      () => _i900.GetLocationFromCityUseCase());
  gh.factory<_i519.BuildPhotoFromFileUseCase>(
      () => _i519.BuildPhotoFromFileUseCase());
  gh.factory<_i133.PickPhotoFromCameraUseCase>(
      () => _i133.PickPhotoFromCameraUseCase());
  gh.factory<_i662.IsAdDescriptionValidUseCase>(
      () => _i662.IsAdDescriptionValidUseCase());
  gh.factory<_i84.GetApiKeyUseCase>(() => _i84.GetApiKeyUseCase());
  gh.factory<_i331.PickPhotosFromGalleryUseCase>(
      () => _i331.PickPhotosFromGalleryUseCase());
  gh.factory<_i315.IsAdTitleValidUseCase>(() => _i315.IsAdTitleValidUseCase());
  gh.factory<_i524.UploadPhotosToStorageUseCase>(
      () => _i524.UploadPhotosToStorageUseCase(gh<_i457.FirebaseStorage>()));
  gh.factory<_i270.RemovePhotosFromStorageUseCase>(
      () => _i270.RemovePhotosFromStorageUseCase(gh<_i457.FirebaseStorage>()));
  gh.factory<_i118.UploadPhotosBloc>(() => _i118.UploadPhotosBloc(
        gh<_i524.UploadPhotosToStorageUseCase>(),
        gh<_i133.PickPhotoFromCameraUseCase>(),
        gh<_i331.PickPhotosFromGalleryUseCase>(),
        gh<_i270.RemovePhotosFromStorageUseCase>(),
        gh<_i519.BuildPhotoFromFileUseCase>(),
      ));
  gh.factory<_i433.UserModelFirestoreToModelMapper>(() =>
      _i433.UserModelFirestoreToModelMapper(
          gh<_i164.GetUserTypeFromStringUseCase>()));
  gh.factory<_i91.PlaceApiService>(
      () => _i91.PlaceApiService(gh<_i84.GetApiKeyUseCase>()));
  gh.factory<_i54.PublishAdBloc>(() => _i54.PublishAdBloc(
        gh<_i315.IsAdTitleValidUseCase>(),
        gh<_i662.IsAdDescriptionValidUseCase>(),
      ));
  gh.factory<_i125.AuthenticationRemoteService>(
      () => _i125.AuthenticationRemoteService(gh<_i59.FirebaseAuth>()));
  gh.factory<_i493.GetLocationUseCase>(() => _i493.GetLocationUseCase(
        gh<_i401.CheckLocationPermissionUseCase>(),
        gh<_i1070.RequestLocationPermissionUseCase>(),
      ));
  gh.factory<_i812.UserLocalService>(
      () => _i812.UserLocalService(gh<_i460.SharedPreferences>()));
  gh.factory<_i815.UserRemoteService>(() => _i815.UserRemoteService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i433.UserModelFirestoreToModelMapper>(),
        gh<_i59.FirebaseAuth>(),
      ));
  gh.factory<_i544.IUserRepository>(() => _i223.UserRepositoryImpl(
        gh<_i815.UserRemoteService>(),
        gh<_i812.UserLocalService>(),
      ));
  gh.factory<_i519.IAuthenticationRepository>(() =>
      _i216.AuthenticationRepositoryImpl(
          gh<_i125.AuthenticationRemoteService>()));
  gh.factory<_i197.GetUserNameUseCase>(
      () => _i197.GetUserNameUseCase(gh<_i544.IUserRepository>()));
  gh.factory<_i273.SaveUserUseCase>(
      () => _i273.SaveUserUseCase(gh<_i544.IUserRepository>()));
  gh.factory<_i951.FetchAndSaveUserLocalUseCase>(
      () => _i951.FetchAndSaveUserLocalUseCase(gh<_i544.IUserRepository>()));
  gh.factory<_i530.IPlaceRepository>(
      () => _i910.PlaceRepositoryImpl(gh<_i91.PlaceApiService>()));
  gh.factory<_i498.GetCityFromLocationUseCase>(
      () => _i498.GetCityFromLocationUseCase(gh<_i493.GetLocationUseCase>()));
  gh.factory<_i841.GetResetPasswordStateUseCase>(() =>
      _i841.GetResetPasswordStateUseCase(
          gh<_i519.IAuthenticationRepository>()));
  gh.factory<_i933.AuthenticationSignedOutUseCase>(() =>
      _i933.AuthenticationSignedOutUseCase(
          gh<_i519.IAuthenticationRepository>()));
  gh.factory<_i917.IsEmailVerifiedUseCase>(() =>
      _i917.IsEmailVerifiedUseCase(gh<_i519.IAuthenticationRepository>()));
  gh.factory<_i384.GetCitySuggestionsUseCase>(
      () => _i384.GetCitySuggestionsUseCase(gh<_i530.IPlaceRepository>()));
  gh.factory<_i777.SubmitSignupUseCase>(() => _i777.SubmitSignupUseCase(
        gh<_i949.IsEmailValidUseCase>(),
        gh<_i61.IsPasswordValidUseCase>(),
        gh<_i411.IsNameValidUseCase>(),
        gh<_i519.IAuthenticationRepository>(),
        gh<_i273.SaveUserUseCase>(),
      ));
  gh.factory<_i550.AuthenticationStartedUseCase>(
      () => _i550.AuthenticationStartedUseCase(
            gh<_i519.IAuthenticationRepository>(),
            gh<_i917.IsEmailVerifiedUseCase>(),
            gh<_i544.IUserRepository>(),
          ));
  gh.factory<_i478.ResetPasswordBloc>(
      () => _i478.ResetPasswordBloc(gh<_i841.GetResetPasswordStateUseCase>()));
  gh.factory<_i282.ProfilBloc>(
      () => _i282.ProfilBloc(gh<_i197.GetUserNameUseCase>()));
  gh.factory<_i837.PublishAdSearchCityBloc>(() => _i837.PublishAdSearchCityBloc(
        gh<_i384.GetCitySuggestionsUseCase>(),
        gh<_i498.GetCityFromLocationUseCase>(),
        gh<_i900.GetLocationFromCityUseCase>(),
      ));
  gh.factory<_i628.SubmitSignInUseCase>(() => _i628.SubmitSignInUseCase(
        gh<_i949.IsEmailValidUseCase>(),
        gh<_i61.IsPasswordValidUseCase>(),
        gh<_i519.IAuthenticationRepository>(),
        gh<_i951.FetchAndSaveUserLocalUseCase>(),
        gh<_i933.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i842.AuthenticationBloc>(() => _i842.AuthenticationBloc(
        gh<_i550.AuthenticationStartedUseCase>(),
        gh<_i933.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i907.SignupBloc>(() => _i907.SignupBloc(
        gh<_i949.IsEmailValidUseCase>(),
        gh<_i61.IsPasswordValidUseCase>(),
        gh<_i411.IsNameValidUseCase>(),
        gh<_i777.SubmitSignupUseCase>(),
        gh<_i628.SubmitSignInUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
