// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i141;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/datasources/address_remote_data_source.dart' as _i187;
import '../../data/repositories/ad_repository_impl.dart' as _i996;
import '../../data/repositories/address_repository_impl.dart' as _i1071;
import '../../data/repositories/authentication_repository_impl.dart' as _i143;
import '../../data/repositories/user_repository_impl.dart' as _i790;
import '../../data/services/ad_firebase_service.dart' as _i545;
import '../../data/services/authentication_firebase_service.dart' as _i271;
import '../../data/services/storage_service.dart' as _i27;
import '../../data/services/user_firebase_service.dart' as _i144;
import '../../domain/repositories/ad_repository.dart' as _i1053;
import '../../domain/repositories/address_repository.dart' as _i956;
import '../../domain/repositories/authentication_repository.dart' as _i277;
import '../../domain/repositories/user_repository.dart' as _i271;
import '../../domain/usecases/authentication/authentication_signed_out_usecase.dart'
    as _i652;
import '../../domain/usecases/authentication/authentication_started_usecase.dart'
    as _i36;
import '../../domain/usecases/authentication/is_email_verified_usecase.dart'
    as _i411;
import '../../domain/usecases/get_location_use_case.dart' as _i882;
import '../../domain/usecases/get_user_type_from_string_usecase.dart' as _i425;
import '../../domain/usecases/publish_ad/is_ad_description_valid_use_case.dart'
    as _i850;
import '../../domain/usecases/publish_ad/is_ad_title_valid_use_case.dart'
    as _i903;
import '../../domain/usecases/publish_ad/pick_photo_from_camera_use_case.dart'
    as _i850;
import '../../domain/usecases/publish_ad/pick_photos_from_gallery_use_case.dart'
    as _i24;
import '../../domain/usecases/reset_password/get_reset_password_state_usecase.dart'
    as _i67;
import '../../domain/usecases/search_adress/search_city_by_lat_long_usecase.dart'
    as _i217;
import '../../domain/usecases/search_adress/search_city_usecase.dart' as _i833;
import '../../domain/usecases/signup/is_email_valid_usecase.dart' as _i231;
import '../../domain/usecases/signup/is_name_valid_usecase.dart' as _i794;
import '../../domain/usecases/signup/is_password_valid_usecase.dart' as _i1031;
import '../../domain/usecases/signup/submit_signin_usecase.dart' as _i941;
import '../../domain/usecases/signup/submit_signup_usecase.dart' as _i486;
import '../../presentation/blocs/authentication/authentication_bloc.dart'
    as _i57;
import '../../presentation/blocs/home/home_cubit.dart' as _i642;
import '../../presentation/blocs/list_ads/list_ads_cubit.dart' as _i1044;
import '../../presentation/blocs/profile/profile_cubit.dart' as _i551;
import '../../presentation/blocs/publish_ad/pick_photos_bloc/pick_photos_bloc_cubit.dart'
    as _i84;
import '../../presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart'
    as _i702;
import '../../presentation/blocs/reset_password/reset_password_bloc.dart'
    as _i463;
import '../../presentation/blocs/search_address/search_city_cubit.dart'
    as _i725;
import '../../presentation/blocs/signup/signup_bloc.dart' as _i274;
import '../data/services/firebase_service.dart' as _i964;
import '../network/app_connectivity_info.dart' as _i816;
import '../network/blocs/generic_error_trigger_cubit.dart' as _i813;
import '../network/GenericErrorTrigger.dart' as _i248;
import '../network/GenericErrorTriggerImpl.dart' as _i354;
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
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i231.IsEmailValidUseCase>(() => _i231.IsEmailValidUseCase());
  gh.factory<_i1031.IsPasswordValidUseCase>(
      () => _i1031.IsPasswordValidUseCase());
  gh.factory<_i794.IsNameValidUseCase>(() => _i794.IsNameValidUseCase());
  gh.factory<_i425.GetUserTypeFromStringUseCase>(
      () => _i425.GetUserTypeFromStringUseCase());
  gh.factory<_i850.PickPhotoFromCameraUseCase>(
      () => _i850.PickPhotoFromCameraUseCase());
  gh.factory<_i850.IsAdDescriptionValidUseCase>(
      () => _i850.IsAdDescriptionValidUseCase());
  gh.factory<_i24.PickPhotosFromGalleryUseCase>(
      () => _i24.PickPhotosFromGalleryUseCase());
  gh.factory<_i903.IsAdTitleValidUseCase>(() => _i903.IsAdTitleValidUseCase());
  gh.factory<_i642.HomeCubit>(() => _i642.HomeCubit());
  gh.singleton<_i974.FirebaseFirestore>(() => appModule.store);
  gh.singleton<_i141.FirebaseCrashlytics>(() => appModule.crashlytics);
  gh.singleton<_i59.FirebaseAuth>(() => appModule.auth);
  gh.singleton<_i457.FirebaseStorage>(() => appModule.storage);
  gh.singleton<_i361.Dio>(() => appModule.dio);
  gh.singleton<_i974.Logger>(() => appModule.logger);
  gh.lazySingleton<_i882.GetLocationUseCase>(
      () => const _i882.GetLocationUseCase());
  gh.lazySingleton<_i545.AdFirebaseService>(() => _i545.AdFirebaseService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i974.Logger>(),
      ));
  gh.lazySingleton<_i248.GenericErrorTrigger>(
      () => _i354.GenericErrorTriggerImpl());
  gh.singleton<_i816.AppConnectivityInfo>(
      () => const _i816.AppConnectivityInfoImpl());
  gh.lazySingleton<_i144.UserRemoteService>(() => _i144.UserRemoteService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i59.FirebaseAuth>(),
        gh<_i974.Logger>(),
      ));
  gh.factory<_i84.PickPhotosBlocCubit>(() => _i84.PickPhotosBlocCubit(
        gh<_i850.PickPhotoFromCameraUseCase>(),
        gh<_i24.PickPhotosFromGalleryUseCase>(),
      ));
  gh.factory<_i271.AuthenticationRemoteService>(
      () => _i271.AuthenticationRemoteService(gh<_i59.FirebaseAuth>()));
  gh.lazySingleton<_i27.StorageService>(() => _i27.StorageService(
        gh<_i457.FirebaseStorage>(),
        gh<_i974.Logger>(),
      ));
  gh.lazySingleton<_i187.AddressRemoteDataSource>(
      () => _i187.AddressRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.factory<_i813.GenericErrorTriggerCubit>(
      () => _i813.GenericErrorTriggerCubit(gh<_i248.GenericErrorTrigger>()));
  gh.factory<_i277.IAuthenticationRepository>(() =>
      _i143.AuthenticationRepositoryImpl(
          gh<_i271.AuthenticationRemoteService>()));
  gh.lazySingleton<_i1053.AdRepository>(() => _i996.AdRepositoryImpl(
        gh<_i248.GenericErrorTrigger>(),
        gh<_i816.AppConnectivityInfo>(),
        gh<_i974.Logger>(),
        gh<_i545.AdFirebaseService>(),
        gh<_i27.StorageService>(),
      ));
  gh.factory<_i1044.ListAdsCubit>(
      () => _i1044.ListAdsCubit(gh<_i1053.AdRepository>()));
  gh.factory<_i67.GetResetPasswordStateUseCase>(() =>
      _i67.GetResetPasswordStateUseCase(gh<_i277.IAuthenticationRepository>()));
  gh.factory<_i652.AuthenticationSignedOutUseCase>(() =>
      _i652.AuthenticationSignedOutUseCase(
          gh<_i277.IAuthenticationRepository>()));
  gh.factory<_i411.IsEmailVerifiedUseCase>(() =>
      _i411.IsEmailVerifiedUseCase(gh<_i277.IAuthenticationRepository>()));
  gh.factory<_i463.ResetPasswordBloc>(
      () => _i463.ResetPasswordBloc(gh<_i67.GetResetPasswordStateUseCase>()));
  gh.lazySingleton<_i271.UserRepository>(() => _i790.UserRepositoryImpl(
        gh<_i144.UserRemoteService>(),
        gh<_i248.GenericErrorTrigger>(),
        gh<_i816.AppConnectivityInfo>(),
        gh<_i974.Logger>(),
        gh<_i277.IAuthenticationRepository>(),
      ));
  gh.lazySingleton<_i956.AddressRepository>(() => _i1071.AddressRepositoryImpl(
        gh<_i187.AddressRemoteDataSource>(),
        gh<_i248.GenericErrorTrigger>(),
        gh<_i816.AppConnectivityInfo>(),
        gh<_i974.Logger>(),
      ));
  gh.factory<_i36.AuthenticationStartedUseCase>(
      () => _i36.AuthenticationStartedUseCase(
            gh<_i277.IAuthenticationRepository>(),
            gh<_i411.IsEmailVerifiedUseCase>(),
            gh<_i271.UserRepository>(),
          ));
  gh.factory<_i551.ProfileCubit>(
      () => _i551.ProfileCubit(gh<_i271.UserRepository>()));
  gh.factory<_i941.SubmitSignInUseCase>(() => _i941.SubmitSignInUseCase(
        gh<_i231.IsEmailValidUseCase>(),
        gh<_i1031.IsPasswordValidUseCase>(),
        gh<_i277.IAuthenticationRepository>(),
        gh<_i652.AuthenticationSignedOutUseCase>(),
        gh<_i271.UserRepository>(),
      ));
  gh.factory<_i57.AuthenticationBloc>(() => _i57.AuthenticationBloc(
        gh<_i36.AuthenticationStartedUseCase>(),
        gh<_i652.AuthenticationSignedOutUseCase>(),
      ));
  gh.factory<_i702.PublishAdCubit>(() => _i702.PublishAdCubit(
        gh<_i903.IsAdTitleValidUseCase>(),
        gh<_i850.IsAdDescriptionValidUseCase>(),
        gh<_i1053.AdRepository>(),
        gh<_i271.UserRepository>(),
      ));
  gh.lazySingleton<_i217.SearchCityByLatLongUseCase>(
      () => _i217.SearchCityByLatLongUseCase(gh<_i956.AddressRepository>()));
  gh.lazySingleton<_i833.SearchCityUseCase>(
      () => _i833.SearchCityUseCase(gh<_i956.AddressRepository>()));
  gh.factory<_i486.SubmitSignupUseCase>(() => _i486.SubmitSignupUseCase(
        gh<_i231.IsEmailValidUseCase>(),
        gh<_i1031.IsPasswordValidUseCase>(),
        gh<_i794.IsNameValidUseCase>(),
        gh<_i277.IAuthenticationRepository>(),
        gh<_i271.UserRepository>(),
      ));
  gh.factory<_i725.SearchCityCubit>(() => _i725.SearchCityCubit(
        searchCityUseCase: gh<_i833.SearchCityUseCase>(),
        searchCityByLatLongUseCase: gh<_i217.SearchCityByLatLongUseCase>(),
        getLocationUseCase: gh<_i882.GetLocationUseCase>(),
      ));
  gh.factory<_i274.SignupBloc>(() => _i274.SignupBloc(
        gh<_i231.IsEmailValidUseCase>(),
        gh<_i1031.IsPasswordValidUseCase>(),
        gh<_i794.IsNameValidUseCase>(),
        gh<_i486.SubmitSignupUseCase>(),
        gh<_i941.SubmitSignInUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
