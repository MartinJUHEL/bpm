part of 'search_ad_cubit.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
sealed class SearchAdState with _$SearchAdState {
  const factory SearchAdState.none() = SearchAdNone;

  const factory SearchAdState.searching({required String query}) = SearchAdSearching;
}
