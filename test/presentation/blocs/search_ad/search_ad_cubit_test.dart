import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/domain/repositories/filter_repository.dart';
import 'package:assoshare/presentation/blocs/search_ad/search_ad_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../domain/entities/ad_entity.dart';
@GenerateNiceMocks([MockSpec<AdRepository>(), MockSpec<FilterRepository>()])
import 'search_ad_cubit_test.mocks.dart';

// Ajout des dummies pour les types Result
void provideDummies() {
  provideDummy<Result<List<AdEntity>>>(const Result.success([]));
  provideDummy<Result<List<String>>>(const Result.success([]));
  provideDummy<Result<FilterEntity>>(Result.success(FilterEntity.defaultFilter));
}

void main() {
  provideDummies();

  group('SearchAdCubit', () {
    late SearchAdCubit searchAdCubit;
    late MockAdRepository mockAdRepository;
    late MockFilterRepository mockFilterRepository;

    final testAd1 = defaultAd;
    final testAd2 = defaultAd.copyWith(id: 'test2');
    final testFilter = FilterEntity.defaultFilter;

    setUp(() {
      mockAdRepository = MockAdRepository();
      mockFilterRepository = MockFilterRepository();
      searchAdCubit = SearchAdCubit(mockAdRepository, mockFilterRepository);
    });

    tearDown(() {
      searchAdCubit.close();
    });

    test('initial state should be SearchAdNone', () {
      expect(searchAdCubit.state, const SearchAdState.none());
    });

    group('onSearchClicked', () {
      test('should emit SearchAdEmptyQuery when state is not SearchAdDisplayResults', () {
        // Act
        searchAdCubit.onSearchClicked();

        // Assert
        expect(searchAdCubit.state, const SearchAdState.emptyQuery());
      });

      test('should emit SearchAdSearching with current query when state is SearchAdDisplayResults', () {
        // Arrange
        final currentState = SearchAdState.displayResults(
          query: 'test',
          result: [testAd1],
          filter: testFilter,
        );
        searchAdCubit.emit(currentState);

        // Act
        searchAdCubit.onSearchClicked();

        // Assert
        expect(
          searchAdCubit.state,
          const SearchAdState.searching(query: 'test', suggestions: []),
        );
      });
    });

    group('onQueryChanged', () {
      test('should emit SearchAdEmptyQuery when query is empty', () async {
        // Act
        searchAdCubit.onQueryChanged('');

        // Assert
        expect(searchAdCubit.state, const SearchAdState.emptyQuery());
      });

      test('should emit SearchAdSearching with suggestions when repository returns suggestions', () async {
        // Arrange
        when(mockAdRepository.getAdSuggestions('test'))
            .thenAnswer((_) async => const Result.success(['suggestion1', 'suggestion2']));

        // Act
        searchAdCubit.onQueryChanged('test');
        await Future.delayed(const Duration(milliseconds: 250)); // Wait for debounce

        // Assert
        verify(mockAdRepository.getAdSuggestions('test')).called(1);
        expect(
          searchAdCubit.state,
          const SearchAdState.searching(
            query: 'test',
            suggestions: ['suggestion1', 'suggestion2'],
          ),
        );
      });

      test('should emit SearchAdSuggestionEmpty when repository returns empty suggestions', () async {
        // Arrange
        when(mockAdRepository.getAdSuggestions('test')).thenAnswer((_) async => const Result.success([]));

        // Act
        searchAdCubit.onQueryChanged('test');
        await Future.delayed(const Duration(milliseconds: 250)); // Wait for debounce

        // Assert
        verify(mockAdRepository.getAdSuggestions('test')).called(1);
        expect(
          searchAdCubit.state,
          const SearchAdState.suggestionEmpty(query: 'test'),
        );
      });

      test('should emit SearchAdError when repository returns failure', () async {
        // Arrange
        when(mockAdRepository.getAdSuggestions('test')).thenAnswer((_) async => const Result.failure(Failure.server()));

        // Act
        searchAdCubit.onQueryChanged('test');
        await Future.delayed(const Duration(milliseconds: 250)); // Wait for debounce

        // Assert
        verify(mockAdRepository.getAdSuggestions('test')).called(1);
        expect(
          searchAdCubit.state,
          const SearchAdState.error(query: 'test'),
        );
      });
    });

    group('onSearchStarted', () {
      test('should emit SearchAdDisplayResults when repositories return success', () async {
        // Arrange
        when(mockFilterRepository.retrieveFilters()).thenAnswer((_) async => testFilter);
        when(mockAdRepository.searchAd('test', 0, testFilter))
            .thenAnswer((_) async => Result.success([testAd1, testAd2]));

        // Act
        await searchAdCubit.onSearchStarted('test');

        // Assert
        verify(mockFilterRepository.retrieveFilters()).called(1);
        verify(mockAdRepository.searchAd('test', 0, testFilter)).called(1);
        expect(
          searchAdCubit.state,
          SearchAdState.displayResults(
            query: 'test',
            result: [testAd1, testAd2],
            filter: testFilter,
          ),
        );
      });

      test('should emit SearchAdEmptyResult when search returns no results', () async {
        // Arrange
        when(mockFilterRepository.retrieveFilters()).thenAnswer((_) async => testFilter);
        when(mockAdRepository.searchAd('test', 0, testFilter)).thenAnswer((_) async => const Result.success([]));

        // Act
        await searchAdCubit.onSearchStarted('test');

        // Assert
        verify(mockFilterRepository.retrieveFilters()).called(1);
        verify(mockAdRepository.searchAd('test', 0, testFilter)).called(1);
        expect(
          searchAdCubit.state,
          SearchAdState.emptyResult(
            query: 'test',
            filter: testFilter,
          ),
        );
      });

      test('should emit SearchAdError when repository returns failure', () async {
        // Arrange
        when(mockFilterRepository.retrieveFilters()).thenAnswer((_) async => testFilter);
        when(mockAdRepository.searchAd('test', 0, testFilter))
            .thenAnswer((_) async => const Result.failure(Failure.server()));

        // Act
        await searchAdCubit.onSearchStarted('test');

        // Assert
        verify(mockFilterRepository.retrieveFilters()).called(1);
        verify(mockAdRepository.searchAd('test', 0, testFilter)).called(1);
        expect(
          searchAdCubit.state,
          const SearchAdState.error(query: 'test'),
        );
      });
    });

    group('onFilterChanged', () {
      test('should restart search with current query when state is SearchAdDisplayResults', () async {
        // Arrange
        when(mockFilterRepository.retrieveFilters()).thenAnswer((_) async => testFilter);
        when(mockAdRepository.searchAd('test', 0, testFilter))
            .thenAnswer((_) async => Result.success([testAd1, testAd2]));

        searchAdCubit.emit(SearchAdState.displayResults(
          query: 'test',
          result: [testAd1],
          filter: testFilter,
        ));

        // Act
        searchAdCubit.onFilterChanged();
        await Future.delayed(const Duration(milliseconds: 250)); // Wait for async operations

        // Assert
        verify(mockFilterRepository.retrieveFilters()).called(1);
        verify(mockAdRepository.searchAd('test', 0, testFilter)).called(1);
        expect(
          searchAdCubit.state,
          SearchAdState.displayResults(
            query: 'test',
            result: [testAd1, testAd2],
            filter: testFilter,
          ),
        );
      });

      test('should not restart search when state is not SearchAdDisplayResults or SearchAdEmptyResult', () async {
        // Arrange
        searchAdCubit.emit(const SearchAdState.loading());

        // Act
        searchAdCubit.onFilterChanged();

        // Assert
        verifyNever(mockFilterRepository.retrieveFilters());
        verifyNever(mockAdRepository.searchAd(any, any, any));
        expect(searchAdCubit.state, const SearchAdState.loading());
      });
    });

    test('onSearchCancel should emit SearchAdNone', () {
      // Arrange
      searchAdCubit.emit(const SearchAdState.loading());

      // Act
      searchAdCubit.onSearchCancel();

      // Assert
      expect(searchAdCubit.state, const SearchAdState.none());
    });
  });
}
