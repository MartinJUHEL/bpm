part of 'publish_ad_search_city_bloc.dart';

@freezed
sealed class PublishAdSearchCityState with _$PublishAdSearchCityState {
  const factory PublishAdSearchCityState(
          {@Default(PublishAdSearchCityStatus.initial)
          PublishAdSearchCityStatus status,
          @Default('') final String sessionToken,
          @Default('') final String query,
          @Default([]) final List<String> suggestions}) =
      _PublishAdSearchCityState;
}

enum PublishAdSearchCityStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == PublishAdSearchCityStatus.initial;

  bool get isLoading => this == PublishAdSearchCityStatus.loading;

  bool get isSuccess => this == PublishAdSearchCityStatus.success;

  bool get isFailure => this == PublishAdSearchCityStatus.failure;
}
