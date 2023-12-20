part of 'publish_ad_search_city_bloc.dart';

@freezed
class PublishAdSearchCityEvent with _$PublishAdSearchCityEvent {
  const factory PublishAdSearchCityEvent.started(String sessionToken) = _Started;
  const factory PublishAdSearchCityEvent.citySearched(String query) = _CitySearched;
}
