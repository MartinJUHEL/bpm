import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/presentation/blocs/search_ad/search_ad_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../domain/entities/ad_entity.dart';

void main() {
  group('SearchAdState', () {
    final testFilter = FilterEntity.defaultFilter;

    group('isSearching', () {
      test('should return false when state is SearchAdNone', () {
        const state = SearchAdState.none();
        expect(state.isSearching(), false);
      });

      test('should return true for all states except SearchAdNone', () {
        final states = [
          const SearchAdState.emptyQuery(),
          const SearchAdState.loading(),
          const SearchAdState.error(query: 'test'),
          const SearchAdState.suggestionEmpty(query: 'test'),
          const SearchAdState.searching(query: 'test', suggestions: ['suggestion']),
          SearchAdState.displayResults(
            query: 'test',
            result: [defaultAd],
            filter: testFilter,
            page: 0,
            totalAds: 1,
            isNextPageLoading: false,
          ),
          SearchAdState.emptyResult(query: 'test', filter: testFilter),
        ];

        for (final state in states) {
          expect(state.isSearching(), true, reason: 'State ${state.runtimeType} should return true');
        }
      });
    });

    group('displayCity', () {
      test('should return true only for SearchAdDisplayResults and SearchAdEmptyResult', () {
        final statesWithCity = [
          SearchAdState.displayResults(
            query: 'test',
            result: [defaultAd],
            filter: testFilter,
            page: 0,
            totalAds: 1,
            isNextPageLoading: false,
          ),
          SearchAdState.emptyResult(query: 'test', filter: testFilter),
        ];

        final statesWithoutCity = [
          const SearchAdState.none(),
          const SearchAdState.emptyQuery(),
          const SearchAdState.loading(),
          const SearchAdState.error(query: 'test'),
          const SearchAdState.suggestionEmpty(query: 'test'),
          const SearchAdState.searching(query: 'test', suggestions: ['suggestion']),
        ];

        for (final state in statesWithCity) {
          expect(state.displayCity(), true, reason: 'State ${state.runtimeType} should display city');
        }

        for (final state in statesWithoutCity) {
          expect(state.displayCity(), false, reason: 'State ${state.runtimeType} should not display city');
        }
      });
    });

    group('displayLocationFilter', () {
      test('should return filter location string for SearchAdDisplayResults', () {
        final state = SearchAdState.displayResults(
          query: 'test',
          result: [defaultAd],
          filter: testFilter,
          page: 0,
          totalAds: 1,
          isNextPageLoading: false,
        );

        expect(state.displayLocationFilter(), testFilter.displayFilterLocationString());
      });

      test('should return filter location string for SearchAdEmptyResult', () {
        final state = SearchAdState.emptyResult(
          query: 'test',
          filter: testFilter,
        );

        expect(state.displayLocationFilter(), testFilter.displayFilterLocationString());
      });

      test('should return empty string for other states', () {
        final states = [
          const SearchAdState.none(),
          const SearchAdState.emptyQuery(),
          const SearchAdState.loading(),
          const SearchAdState.error(query: 'test'),
          const SearchAdState.suggestionEmpty(query: 'test'),
          const SearchAdState.searching(query: 'test', suggestions: ['suggestion']),
        ];

        for (final state in states) {
          expect(state.displayLocationFilter(), empty, reason: 'State ${state.runtimeType} should return empty string');
        }
      });
    });
  });
}
