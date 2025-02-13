import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/ad/ads_page_entity.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/domain/repositories/filter_repository.dart';
import 'package:assoshare/domain/repositories/search_history_repository.dart';
import 'package:assoshare/presentation/blocs/search_ad/search_ad_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../domain/entities/ad_entity.dart';
@GenerateNiceMocks([MockSpec<AdRepository>(), MockSpec<FilterRepository>(), MockSpec<SearchHistoryRepository>()])
import 'search_ad_cubit_test.mocks.dart';

void main() {
  late MockAdRepository mockAdRepository;
  late MockFilterRepository mockFilterRepository;
  late MockSearchHistoryRepository mockSearchHistoryRepository;
  late SearchAdCubit searchAdCubit;

  setUpAll(() {
    provideDummy<Result<List<String>>>(const Result.success([]));
    provideDummy<Result<AdsPageEntity>>(const Result.success(AdsPageEntity(ads: [], total: 0)));
  });

  const mockFilter = FilterEntity(
    city: CityEntity(
      city: 'Paris',
      postcode: '75000',
      latLong: LatLong(lat: 48.8566, long: 2.3522),
    ),
    locationRadius: 10,
  );

  setUp(() {
    mockAdRepository = MockAdRepository();
    mockFilterRepository = MockFilterRepository();
    mockSearchHistoryRepository = MockSearchHistoryRepository();
    searchAdCubit = SearchAdCubit(mockAdRepository, mockFilterRepository, mockSearchHistoryRepository);
  });

  tearDown(() {
    searchAdCubit.close();
  });

  test('initial state is SearchAdNone', () {
    expect(searchAdCubit.state, const SearchAdState.none());
  });

  group('onSearchClicked', () {
    blocTest<SearchAdCubit, SearchAdState>(
      'emits [SearchAdEmptyQuery] with history when no previous query exists',
      build: () {
        when(mockSearchHistoryRepository.getSearchHistory()).thenAnswer((_) async => ['test1', 'test2']);
        return searchAdCubit;
      },
      act: (cubit) => cubit.onSearchClicked(),
      expect: () => [
        const SearchAdState.emptyQuery(searchHistory: ['test1', 'test2'])
      ],
    );

    blocTest<SearchAdCubit, SearchAdState>(
      'emits [SearchAdSearching] when previous query exists',
      build: () => searchAdCubit,
      seed: () => SearchAdState.displayResults(
        query: 'test',
        result: [defaultAd],
        filter: mockFilter,
        page: 0,
        totalAds: 1,
        isNextPageLoading: false,
      ),
      act: (cubit) => cubit.onSearchClicked(),
      expect: () => [
        const SearchAdState.searching(query: 'test', suggestions: []),
      ],
    );
  });

  group('onQueryChanged', () {
    blocTest<SearchAdCubit, SearchAdState>(
      'emits [SearchAdEmptyQuery] with history when query is empty',
      build: () {
        when(mockSearchHistoryRepository.getSearchHistory()).thenAnswer((_) async => ['test1', 'test2']);
        return searchAdCubit;
      },
      act: (cubit) => cubit.onQueryChanged(''),
      expect: () => [
        const SearchAdState.emptyQuery(searchHistory: ['test1', 'test2'])
      ],
    );

    blocTest<SearchAdCubit, SearchAdState>(
      'emits [SearchAdSearching] with suggestions when query has results',
      build: () {
        when(mockAdRepository.getAdSuggestions('test'))
            .thenAnswer((_) async => const Result.success(['suggestion1', 'suggestion2']));
        return searchAdCubit;
      },
      act: (cubit) => cubit.onQueryChanged('test'),
      wait: const Duration(milliseconds: 250),
      expect: () => [
        const SearchAdState.searching(
          query: 'test',
          suggestions: ['suggestion1', 'suggestion2'],
        ),
      ],
    );

    blocTest<SearchAdCubit, SearchAdState>(
      'emits [SearchAdSuggestionEmpty] when no suggestions found',
      build: () {
        when(mockAdRepository.getAdSuggestions('test')).thenAnswer((_) async => const Result.success([]));
        return searchAdCubit;
      },
      act: (cubit) => cubit.onQueryChanged('test'),
      wait: const Duration(milliseconds: 250),
      expect: () => [
        const SearchAdState.suggestionEmpty(query: 'test'),
      ],
    );
  });

  group('onSearchStarted', () {
    blocTest<SearchAdCubit, SearchAdState>(
      'adds search to history and emits [SearchAdLoading, SearchAdDisplayResults] when search has results',
      build: () {
        when(mockFilterRepository.retrieveFilters()).thenAnswer((_) async => mockFilter);
        when(mockAdRepository.searchAd('test', 0, mockFilter))
            .thenAnswer((_) async => Result.success(AdsPageEntity(ads: [defaultAd], total: 1)));
        when(mockSearchHistoryRepository.addSearch('test')).thenAnswer((_) async {});
        return searchAdCubit;
      },
      act: (cubit) => cubit.onSearchStarted('test'),
      expect: () => [
        const SearchAdState.loading(),
        SearchAdState.displayResults(
          query: 'test',
          result: [defaultAd],
          filter: mockFilter,
          page: 0,
          totalAds: 1,
          isNextPageLoading: false,
        ),
      ],
      verify: (_) {
        verify(mockSearchHistoryRepository.addSearch('test')).called(1);
      },
    );

    blocTest<SearchAdCubit, SearchAdState>(
      'adds search to history and emits [SearchAdLoading, SearchAdEmptyResult] when no results found',
      build: () {
        when(mockFilterRepository.retrieveFilters()).thenAnswer((_) async => mockFilter);
        when(mockAdRepository.searchAd('test', 0, mockFilter))
            .thenAnswer((_) async => const Result.success(AdsPageEntity(ads: [], total: 0)));
        when(mockSearchHistoryRepository.addSearch('test')).thenAnswer((_) async {});
        return searchAdCubit;
      },
      act: (cubit) => cubit.onSearchStarted('test'),
      expect: () => [
        const SearchAdState.loading(),
        const SearchAdState.emptyResult(
          query: 'test',
          filter: mockFilter,
        ),
      ],
      verify: (_) {
        verify(mockSearchHistoryRepository.addSearch('test')).called(1);
      },
    );
  });

  group('history management', () {
    blocTest<SearchAdCubit, SearchAdState>(
      'removeFromHistory removes search and emits updated history',
      build: () {
        when(mockSearchHistoryRepository.removeSearch('test')).thenAnswer((_) async {});
        when(mockSearchHistoryRepository.getSearchHistory()).thenAnswer((_) async => ['remaining']);
        return searchAdCubit;
      },
      act: (cubit) => cubit.removeFromHistory('test'),
      expect: () => [
        const SearchAdState.emptyQuery(searchHistory: ['remaining']),
      ],
      verify: (_) {
        verify(mockSearchHistoryRepository.removeSearch('test')).called(1);
        verify(mockSearchHistoryRepository.getSearchHistory()).called(1);
      },
    );
  });

  group('onEndPageReached', () {
    blocTest<SearchAdCubit, SearchAdState>(
      'loads more results when available',
      build: () {
        when(mockAdRepository.searchAd('test', 0, mockFilter))
            .thenAnswer((_) async => Result.success(AdsPageEntity(ads: [defaultAd], total: 2)));
        return searchAdCubit;
      },
      seed: () => SearchAdState.displayResults(
        query: 'test',
        result: [defaultAd],
        filter: mockFilter,
        page: 0,
        totalAds: 2,
        isNextPageLoading: false,
      ),
      act: (cubit) => cubit.onEndPageReached(),
      expect: () => [
        SearchAdState.displayResults(
          query: 'test',
          result: [defaultAd],
          filter: mockFilter,
          page: 0,
          totalAds: 2,
          isNextPageLoading: true,
        ),
        SearchAdState.displayResults(
          query: 'test',
          result: [defaultAd, defaultAd],
          filter: mockFilter,
          page: 0,
          totalAds: 2,
          isNextPageLoading: false,
        ),
      ],
    );
  });

  group('onSearchCancel', () {
    blocTest<SearchAdCubit, SearchAdState>(
      'emits [SearchAdNone]',
      build: () => searchAdCubit,
      act: (cubit) => cubit.onSearchCancel(),
      expect: () => [const SearchAdState.none()],
    );
  });
}
