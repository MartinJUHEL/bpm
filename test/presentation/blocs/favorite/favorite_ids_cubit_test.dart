import 'dart:async';

import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_ids_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../shared_mocks.mocks.dart';
import '../../domain/entities/user_entity.dart';

void main() {
  late MockFavoriteRepository mockFavoriteRepository;
  late MockUserRepository mockUserRepository;
  late FavoriteIdsCubit cubit;
  late StreamController<Set<String>> favoriteIdsController;

  final testUser = defaultUser;

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
    mockUserRepository = MockUserRepository();
    favoriteIdsController = StreamController<Set<String>>.broadcast();

    // Provide dummy values for Result types
    provideDummy<Result<List<String>>>(const Result.success([]));
    provideDummy<Result<void>>(const Result.success(null));

    when(mockFavoriteRepository.favoriteIdsStream)
        .thenAnswer((_) => favoriteIdsController.stream);

    cubit = FavoriteIdsCubit(mockFavoriteRepository, mockUserRepository);
  });

  tearDown(() {
    favoriteIdsController.close();
    cubit.close();
  });

  group('FavoriteIdsCubit', () {
    blocTest<FavoriteIdsCubit, Set<String>>(
      'emits empty set initially',
      build: () => cubit,
      expect: () => [],
    );

    blocTest<FavoriteIdsCubit, Set<String>>(
      'emits new set when stream emits',
      build: () => cubit,
      act: (cubit) => favoriteIdsController.add({'ad1', 'ad2'}),
      expect: () => [
        containsAll(['ad1', 'ad2'])
      ],
    );

    blocTest<FavoriteIdsCubit, Set<String>>(
      'loads favorite ids successfully',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        when(mockFavoriteRepository.getFavoriteIds(testUser.uid))
            .thenAnswer((_) async => const Result.success(['ad1', 'ad2']));
        return cubit;
      },
      act: (cubit) => cubit.loadFavoriteIds(),
      expect: () => [
        containsAll(['ad1', 'ad2'])
      ],
    );

    blocTest<FavoriteIdsCubit, Set<String>>(
      'does not emit when loading favorite ids fails',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(testUser);
        when(mockFavoriteRepository.getFavoriteIds(testUser.uid))
            .thenAnswer((_) async => const Result.failure(Failure.server()));
        return cubit;
      },
      act: (cubit) => cubit.loadFavoriteIds(),
      expect: () => [],
    );

    blocTest<FavoriteIdsCubit, Set<String>>(
      'does not emit when user is not logged in',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(null);
        return cubit;
      },
      act: (cubit) => cubit.loadFavoriteIds(),
      expect: () => [],
      verify: (_) {
        verifyNever(mockFavoriteRepository.getFavoriteIds(any));
      },
    );

    group('toggleFavorite', () {
      blocTest<FavoriteIdsCubit, Set<String>>(
        'adds favorite when not in state',
        build: () {
          when(mockUserRepository.getLocalUser()).thenReturn(testUser);
          when(mockFavoriteRepository.addFavorite(testUser.uid, 'ad1'))
              .thenAnswer((_) async => const Result.success(null));
          return cubit;
        },
        seed: () => {'ad2'},
        act: (cubit) => cubit.toggleFavorite('ad1'),
        expect: () => [
          containsAll(['ad1', 'ad2'])
        ],
      );

      blocTest<FavoriteIdsCubit, Set<String>>(
        'removes favorite when in state',
        build: () {
          when(mockUserRepository.getLocalUser()).thenReturn(testUser);
          when(mockFavoriteRepository.removeFavorite(testUser.uid, 'ad1'))
              .thenAnswer((_) async => const Result.success(null));
          return cubit;
        },
        seed: () => {'ad1', 'ad2'},
        act: (cubit) => cubit.toggleFavorite('ad1'),
        expect: () => [
          containsAll(['ad2'])
        ],
      );

      blocTest<FavoriteIdsCubit, Set<String>>(
        'does not emit when adding favorite fails',
        build: () {
          when(mockUserRepository.getLocalUser()).thenReturn(testUser);
          when(mockFavoriteRepository.addFavorite(testUser.uid, 'ad1'))
              .thenAnswer((_) async => const Result.failure(Failure.server()));
          return cubit;
        },
        seed: () => {'ad2'},
        act: (cubit) => cubit.toggleFavorite('ad1'),
        expect: () => [],
      );

      blocTest<FavoriteIdsCubit, Set<String>>(
        'does not emit when removing favorite fails',
        build: () {
          when(mockUserRepository.getLocalUser()).thenReturn(testUser);
          when(mockFavoriteRepository.removeFavorite(testUser.uid, 'ad1'))
              .thenAnswer((_) async => const Result.failure(Failure.server()));
          return cubit;
        },
        seed: () => {'ad1', 'ad2'},
        act: (cubit) => cubit.toggleFavorite('ad1'),
        expect: () => [],
      );

      blocTest<FavoriteIdsCubit, Set<String>>(
        'does not emit when user is not logged in',
        build: () {
          when(mockUserRepository.getLocalUser()).thenReturn(null);
          return cubit;
        },
        seed: () => {'ad1'},
        act: (cubit) => cubit.toggleFavorite('ad1'),
        expect: () => [],
        verify: (_) {
          verifyNever(mockFavoriteRepository.addFavorite(any, any));
          verifyNever(mockFavoriteRepository.removeFavorite(any, any));
        },
      );
    });

    test('isFavorite returns correct value', () {
      cubit.emit({'ad1', 'ad2'});
      
      expect(cubit.isFavorite('ad1'), isTrue);
      expect(cubit.isFavorite('ad3'), isFalse);
    });

    blocTest<FavoriteIdsCubit, Set<String>>(
      'clearCache emits empty set',
      build: () => cubit,
      seed: () => {'ad1', 'ad2'},
      act: (cubit) => cubit.clearCache(),
      expect: () => [isEmpty],
      verify: (_) {
        verify(mockFavoriteRepository.clearCache()).called(1);
      },
    );
  });
} 