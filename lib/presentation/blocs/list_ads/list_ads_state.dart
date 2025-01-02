part of 'list_ads_cubit.dart';

@freezed
sealed class ListAdsState with _$ListAdsState {
  const factory ListAdsState.initial() = ListAdsInitial;

  const factory ListAdsState.error() = ListAdsError;

  const factory ListAdsState.empty() = ListAdsEmpty;

  const factory ListAdsState.data(List<AdEntity> ads) = ListAdsData;
}
