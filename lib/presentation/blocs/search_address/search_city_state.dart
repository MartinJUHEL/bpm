part of 'search_city_cubit.dart';

@freezed
class SearchCityState with _$SearchCityState {
  const SearchCityState._();

  const factory SearchCityState(
      {@Default('') final String query,
      @Default([]) final List<CityEntity> suggestions,
      @Default(false) final bool hasError,
      @Default(false) final bool isLoading,
      @Default(false) final bool locationLoading,
      final CityEntity? selectedCity}) = _SearchCityState;

  bool isCtaEnabled() => selectedCity != null;
}
