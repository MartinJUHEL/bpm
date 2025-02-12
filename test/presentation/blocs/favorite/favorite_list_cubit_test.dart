import 'dart:async';

import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/domain/usecases/favorite/update_favorites_use_case.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_list_cubit.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_list_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../shared_mocks.mocks.dart';
import '../../domain/entities/ad_entity.dart';
import '../../domain/entities/user_entity.dart';
import 'favorite_list_cubit_test.mocks.dart';

@GenerateMocks([UpdateFavoritesUseCase])
void main() {
  late MockFavoriteRepository mockFavoriteRepository;
  late MockUserRepository mockUserRepository;
  late MockUpdateFavoritesUseCase mockUpdateFavoritesUseCase;
  late FavoriteListCubit cubit;
  late StreamController<Set<String>> favoriteIdsController;

  final testUser = defaultUser;
  final testAd = defaultAd;
  final testFavorite = FavoriteEntity(
    ad: testAd,
    addedAt: DateTime.now(),
  );

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
    mockUserRepository = MockUserRepository();
    mockUpdateFavoritesUseCase = MockUpdateFavoritesUseCase();
    favoriteIdsController = StreamController<Set<String>>.broadcast();

    // Provide dummy values for Result types
    provideDummy<Result<List<FavoriteEntity>>>(const Result.success([]));
    provideDummy<Result<void>>(const Result.success(null));

    when(mockFavoriteRepository.favoriteIdsStream)
        .thenAnswer((_) => favoriteIdsController.stream);

    cubit = FavoriteListCubit(
      mockFavoriteRepository,
      mockUserRepository,
      mockUpdateFavoritesUseCase,
    );
  });

  tearDown(() {
    favoriteIdsController.close();
    cubit.close();
  });

  group('FavoriteListCubit', () {
    blocTest<FavoriteListCubit, FavoriteListState>(
      'emits [loading, success] when loadFavorites succeeds',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        when(mockFavoriteRepository.getFavorites(testUser.uid))
            .thenAnswer((_) async => Result.success([testFavorite]));
        return cubit;
      },
      act: (cubit) => cubit.loadFavorites(),
      expect: () => [
        const FavoriteListState.loading(),
        FavoriteListState.success([testFavorite]),
      ],
    );

    blocTest<FavoriteListCubit, FavoriteListState>(
      'emits [loading, error] when loadFavorites fails',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        when(mockFavoriteRepository.getFavorites(testUser.uid))
            .thenAnswer((_) async => const Result.failure(Failure.server()));
        return cubit;
      },
      act: (cubit) => cubit.loadFavorites(),
      expect: () => [
        const FavoriteListState.loading(),
        const FavoriteListState.error(),
      ],
    );

    blocTest<FavoriteListCubit, FavoriteListState>(
      'emits only loading when loadFavorites is called without user',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(null);
        return cubit;
      },
      act: (cubit) => cubit.loadFavorites(),
      expect: () => [const FavoriteListState.loading()],
    );

    blocTest<FavoriteListCubit, FavoriteListState>(
      'updates favorites when stream emits new IDs',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        final updatedFavorites = [
          FavoriteEntity(
            ad: testAd,
            addedAt: DateTime.now(),
          )
        ];
        when(mockUpdateFavoritesUseCase(any, any))
            .thenAnswer((_) async => updatedFavorites);
        return cubit;
      },
      seed: () => FavoriteListState.success([testFavorite]),
      act: (cubit) => favoriteIdsController.add({'ad1', 'ad2'}),
      wait: const Duration(milliseconds: 150),
      expect: () => [
        isA<FavoriteListSuccess>().having(
          (state) => state.favorites.first.ad.id,
          'first favorite ad id',
          testAd.id,
        ),
      ],
      verify: (_) {
        verify(mockUpdateFavoritesUseCase({'ad1', 'ad2'}, [testFavorite]))
            .called(1);
      },
    );

    blocTest<FavoriteListCubit, FavoriteListState>(
      'loads all favorites when stream emits and state is not success',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        when(mockFavoriteRepository.getFavorites(testUser.uid))
            .thenAnswer((_) async => Result.success([testFavorite]));
        return cubit;
      },
      act: (cubit) => favoriteIdsController.add({'ad1'}),
      wait: const Duration(milliseconds: 150),
      expect: () => [
        const FavoriteListState.loading(),
        FavoriteListState.success([testFavorite]),
      ],
    );

    blocTest<FavoriteListCubit, FavoriteListState>(
      'removes favorite when removeFavorite is called',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        when(mockFavoriteRepository.removeFavorite(testUser.uid, testAd.id))
            .thenAnswer((_) async => const Result.success(null));
        return cubit;
      },
      seed: () => FavoriteListState.success([testFavorite]),
      act: (cubit) => cubit.removeFavorite(testAd.id),
      expect: () => [const FavoriteListState.success([])],
    );

    blocTest<FavoriteListCubit, FavoriteListState>(
      'emits initial state when clearCache is called',
      build: () => cubit,
      seed: () => FavoriteListState.success([testFavorite]),
      act: (cubit) => cubit.clearCache(),
      expect: () => [const FavoriteListState.initial()],
      verify: (_) {
        verify(mockFavoriteRepository.clearCache()).called(1);
      },
    );
  });
}
