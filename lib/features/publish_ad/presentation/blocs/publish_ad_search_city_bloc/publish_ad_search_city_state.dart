part of 'publish_ad_search_city_bloc.dart';

@freezed
sealed class PublishAdSearchCityState with _$PublishAdSearchCityState {
  const factory PublishAdSearchCityState({
    @Default(SearchCityStatus.initial) SearchCityStatus status,
    @Default('') final String sessionToken,
    @Default('') final String query,
    @Default([]) final List<String> suggestions,
    final CityModel? city,
    @Default('') final String errorMessage,
  }) = _PublishAdSearchCityState;
}

enum SearchCityStatus {
  initial,
  loading,
  failure,
  success,
  suggestionFound,
  located;

  bool get isInitial => this == SearchCityStatus.initial;

  bool get isLoading => this == SearchCityStatus.loading;

  bool get isSuggestionFound => this == SearchCityStatus.suggestionFound;

  bool get isLocated => this == SearchCityStatus.located;

  bool get isFailure => this == SearchCityStatus.failure;

  bool get isSuccess => this == SearchCityStatus.success;
}
