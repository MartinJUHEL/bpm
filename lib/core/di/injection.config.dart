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
import '../../features/profil/presentation/bloc/profil_bloc.dart' as _i282;
import '../../features/publish_ad/domain/usecases/is_ad_description_valid_use_case.dart'
    as _i662;
import '../../features/publish_ad/domain/usecases/is_ad_title_valid_use_case.dart'
    as _i315;
import '../../features/publish_ad/domain/usecases/pick_photo_from_camera_use_case.dart'
    as _i133;
import '../../features/publish_ad/domain/usecases/pick_photos_from_gallery_use_case.dart'
    as _i331;
import '../../features/publish_ad/presentation/blocs/pick_photos_bloc/pick_photos_bloc_cubit.dart'
    as _i962;
import '../../features/publish_ad/presentation/blocs/publish_ad_bloc/publish_ad_bloc.dart'
    as _i54;
import '../../features/reset_password/domain/usecases/get_reset_password_state_usecase.dart'
    as _i841;
import '../../features/reset_password/presentation/bloc/reset_password_bloc.dart'
    as _i478;
import '../../features/searchaddress/data/datasources/address_remote_data_source.dart'
    as _i896;
import '../../features/searchaddress/data/repositories/address_repository_impl.dart'
    as _i47;
import '../../features/searchaddress/domain/repositories/address_repository.dart'
    as _i251;
import '../../features/searchaddress/domain/usecase/SearchCityByLatLongUseCase.dart'
    as _i92;
import '../../features/searchaddress/domain/usecase/SearchCityUseCase.dart'
    as _i969;
import '../../features/searchaddress/presentation/blocs/publish_ad_search_city_bloc/search_city_cubit.dart'
    as _i530;
import '../../features/signup/domain/usecases/is_email_valid_usecase.dart'
    as _i949;
import '../../features/signup/domain/usecases/is_name_valid_usecase.dart'
    as _i411;
import '../../features/signup/domain/usecases/is_password_valid_usecase.dart'
    as _i61;
import '../../features/signup/domain/usecases/submit_signin_usecase.dart'
    as _i628;
import '../../features/signup/domain/usecases/submit_signup_usecase.dart'
    as _i777;
import '../../features/signup/presentation/bloc/signup_bloc.dart' as _i907;
import '../data/repositories/ad_repository_impl.dart' as _i476;
import '../data/repositories/user_repository_impl.dart' as _i223;
import '../data/services/firebase_service.dart' as _i964;
import '../data/services/remote/ad_firebase_service.dart' as _i761;
import '../data/services/remote/storage_service.dart' as _i123;
import '../data/services/remote/user_remote_service.dart' as _i815;
import '../domain/repositories/ad_repository.dart' as _i508;
import '../domain/repositories/user_repository.dart' as _i544;
import '../domain/usecases/get_location_use_case.dart' as _i493;
import '../domain/usecases/get_user_type_from_string_usecase.dart' as _i164;
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
  gh.factory<_i164.GetUserTypeFromStringUseCase>(
      () => _i164.GetUserTypeFromStringUseCase());
  gh.factory<_i202.HomeBloc>(() => _i202.HomeBloc());
  gh.factory<_i949.IsEmailValidUseCase>(() => _i949.IsEmailValidUseCase());
  gh.factory<_i61.IsPasswordValidUseCase>(() => _i61.IsPasswordValidUseCase());
  gh.factory<_i411.IsNameValidUseCase>(() => _i411.IsNameValidUseCase());
  gh.factory<_i133.PickPhotoFromCameraUseCase>(
      () => _i133.PickPhotoFromCameraUseCase());
  gh.factory<_i662.IsAdDescriptionValidUseCase>(
      () => _i662.IsAdDescriptionValidUseCase());
  gh.factory<_i331.PickPhotosFromGalleryUseCase>(
      () => _i331.PickPhotosFromGalleryUseCase());
  gh.factory<_i315.IsAdTitleValidUseCase>(() => _i315.IsAdTitleValidUseCase());
  gh.singleton<_i974.FirebaseFirestore>(() => appModule.store);
  gh.singleton<_i141.FirebaseCrashlytics>(() => appModule.crashlytics);
  gh.singleton<_i59.FirebaseAuth>(() => appModule.auth);
  gh.singleton<_i457.FirebaseStorage>(() => appModule.storage);
  gh.singleton<_i361.Dio>(() => appModule.dio);
  gh.lazySingleton<_i493.GetLocationUseCase>(
      () => const _i493.GetLocationUseCase());
  gh.lazySingleton<_i123.StorageService>(
      () => _i123.StorageService(gh<_i457.FirebaseStorage>()));
  gh.lazySingleton<_i248.GenericErrorTrigger>(
      () => _i354.GenericErrorTriggerImpl());
  gh.singleton<_i816.AppConnectivityInfo>(
      () => const _i816.AppConnectivityInfoImpl());
  gh.lazySingleton<_i896.AddressRemoteDataSource>(
      () => _i896.AddressRemoteDataSourceImpl(dio: gh<_i361.Dio>()));
  gh.lazySingleton<_i761.AdFirebaseService>(
      () => _i761.AdFirebaseService(gh<_i974.FirebaseFirestore>()));
  gh.lazySingleton<_i251.AddressRepository>(() => _i47.AddressRepositoryImpl(
        gh<_i896.AddressRemoteDataSource>(),
        gh<_i248.GenericErrorTrigger>(),
        gh<_i816.AppConnectivityInfo>(),
      ));
  gh.factory<_i125.AuthenticationRemoteService>(
      () => _i125.AuthenticationRemoteService(gh<_i59.FirebaseAuth>()));
  gh.factory<_i962.PickPhotosBlocCubit>(() => _i962.PickPhotosBlocCubit(
        gh<_i133.PickPhotoFromCameraUseCase>(),
        gh<_i331.PickPhotosFromGalleryUseCase>(),
      ));
  gh.factory<_i813.GenericErrorTriggerCubit>(
      () => _i813.GenericErrorTriggerCubit(gh<_i248.GenericErrorTrigger>()));
  gh.lazySingleton<_i508.AdRepository>(() => _i476.AdRepositoryImpl(
        gh<_i248.GenericErrorTrigger>(),
        gh<_i816.AppConnectivityInfo>(),
        gh<_i761.AdFirebaseService>(),
        gh<_i123.StorageService>(),
      ));
  gh.lazySingleton<_i815.UserRemoteService>(() => _i815.UserRemoteService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i59.FirebaseAuth>(),
      ));
  gh.factory<_i519.IAuthenticationRepository>(() =>
      _i216.AuthenticationRepositoryImpl(
          gh<_i125.AuthenticationRemoteService>()));
  gh.lazySingleton<_i544.UserRepository>(() => _i223.UserRepositoryImpl(
        gh<_i815.UserRemoteService>(),
        gh<_i248.GenericErrorTrigger>(),
        gh<_i816.AppConnectivityInfo>(),
        gh<_i519.IAuthenticationRepository>(),
      ));
  gh.lazySingleton<_i969.SearchCityUseCase>(
      () => _i969.SearchCityUseCase(gh<_i251.AddressRepository>()));
  gh.lazySingleton<_i92.SearchCityByLatLongUseCase>(
      () => _i92.SearchCityByLatLongUseCase(gh<_i251.AddressRepository>()));
  gh.factory<_i777.SubmitSignupUseCase>(() => _i777.SubmitSignupUseCase(
        gh<_i949.IsEmailValidUseCase>(),
        gh<_i61.IsPasswordValidUseCase>(),
        gh<_i411.IsNameValidUseCase>(),
        gh<_i519.IAuthenticationRepository>(),
        gh<_i544.UserRepository>(),
      ));
  gh.factory<_i282.ProfilBloc>(
      () => _i282.ProfilBloc(gh<_i544.UserRepository>()));
  gh.factory<_i841.GetResetPasswordStateUseCase>(() =>
      _i841.GetResetPasswordStateUseCase(
          gh<_i519.IAuthenticationRepository>()));
  gh.factory<_i933.AuthenticationSignedOutUseCase>(() =>
      _i933.AuthenticationSignedOutUseCase(
          gh<_i519.IAuthenticationRepository>()));
  gh.factory<_i917.IsEmailVerifiedUseCase>(() =>
      _i917.IsEmailVerifiedUseCase(gh<_i519.IAuthenticationRepository>()));
  gh.factory<_i628.SubmitSignInUseCase>(() => _i628.SubmitSignInUseCase(
        gh<_i949.IsEmailValidUseCase>(),
        gh<_i61.IsPasswordValidUseCase>(),
        gh<_i519.IAuthenticationRepository>(),
        gh<_i933.AuthenticationSignedOutUseCase>(),
        gh<_i544.UserRepository>(),
      ));
  gh.factory<_i478.ResetPasswordBloc>(
      () => _i478.ResetPasswordBloc(gh<_i841.GetResetPasswordStateUseCase>()));
  gh.factory<_i54.PublishAdCubit>(() => _i54.PublishAdCubit(
        gh<_i315.IsAdTitleValidUseCase>(),
        gh<_i662.IsAdDescriptionValidUseCase>(),
        gh<_i508.AdRepository>(),
        gh<_i544.UserRepository>(),
      ));
  gh.factory<_i530.SearchCityCubit>(() => _i530.SearchCityCubit(
        searchCityUseCase: gh<_i969.SearchCityUseCase>(),
        searchCityByLatLongUseCase: gh<_i92.SearchCityByLatLongUseCase>(),
        getLocationUseCase: gh<_i493.GetLocationUseCase>(),
      ));
  gh.factory<_i907.SignupBloc>(() => _i907.SignupBloc(
        gh<_i949.IsEmailValidUseCase>(),
        gh<_i61.IsPasswordValidUseCase>(),
        gh<_i411.IsNameValidUseCase>(),
        gh<_i777.SubmitSignupUseCase>(),
        gh<_i628.SubmitSignInUseCase>(),
      ));
  gh.factory<_i550.AuthenticationStartedUseCase>(
      () => _i550.AuthenticationStartedUseCase(
            gh<_i519.IAuthenticationRepository>(),
            gh<_i917.IsEmailVerifiedUseCase>(),
            gh<_i544.UserRepository>(),
          ));
  gh.factory<_i842.AuthenticationBloc>(() => _i842.AuthenticationBloc(
        gh<_i550.AuthenticationStartedUseCase>(),
        gh<_i933.AuthenticationSignedOutUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
