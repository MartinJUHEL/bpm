part of 'search_ad_cubit.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
sealed class SearchAdState with _$SearchAdState {
  const factory SearchAdState.none() = SearchAdNone;

  const factory SearchAdState.suggestionEmpty({required String query}) = SearchAdSuggestionEmpty;

  const factory SearchAdState.error({required String query}) = SearchAdError;

  const factory SearchAdState.searching({required String query, required List<String> suggestions}) = SearchAdSearching;

  const factory SearchAdState.displayResults(
      {required String query,
      required List<AdEntity> result,
      required FilterEntity filter,
      required int page,
      required int totalAds,
      required bool isNextPageLoading}) = SearchAdDisplayResults;

  const factory SearchAdState.emptyResult({required String query, required FilterEntity filter}) = SearchAdEmptyResult;

  const factory SearchAdState.emptyQuery({@Default([]) List<String> searchHistory}) = SearchAdQueryEmpty;

  const factory SearchAdState.loading() = SearchAdLoading;
}

extension SearchAdStateExt on SearchAdState {
  bool isSearching() => this is! SearchAdNone;

  /// Use to display or not city under searchbar.
  bool displayCity() => this is SearchAdDisplayResults || this is SearchAdEmptyResult;

  String displayLocationFilter() => switch (this) {
        SearchAdDisplayResults(:final filter) ||
        SearchAdEmptyResult(:final filter) =>
          filter.displayFilterLocationString(),
        _ => empty // Shouldn't happen.
      };
}
