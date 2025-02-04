part of 'profile_ads_cubit.dart';

@freezed
sealed class ProfileAdsState with _$ProfileAdsState {
  const factory ProfileAdsState.initial() = ProfileAdsInitial;

  const factory ProfileAdsState.error() = ProfileAdsError;

  const factory ProfileAdsState.empty() = ProfileAdsEmpty;

  const factory ProfileAdsState.data(List<AdEntity> ads) = ProfileAdsData;
}
