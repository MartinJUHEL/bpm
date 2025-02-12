import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/domain/usecases/favorite/update_favorites_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../presentation/domain/entities/ad_entity.dart';
import '../../../presentation/domain/entities/user_entity.dart';
import '../../../shared_mocks.mocks.dart';

void main() {
  late MockFavoriteRepository mockFavoriteRepository;
  late MockUserRepository mockUserRepository;
  late UpdateFavoritesUseCase useCase;

  final testUser = defaultUser;

  final testAd = defaultAd;

  final testFavorite = FavoriteEntity(
    ad: testAd,
    addedAt: DateTime.now(),
  );

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
    mockUserRepository = MockUserRepository();
    useCase = UpdateFavoritesUseCase(
      mockFavoriteRepository,
      mockUserRepository,
    );

    // Provide dummy values for Result types
    provideDummy<Result<FavoriteEntity>>(Result.success(testFavorite));
  });

  group('UpdateFavoritesUseCase', () {
    test('returns empty list when user is not logged in', () async {
      when(mockUserRepository.getLocalUser()).thenReturn(null);

      final result = await useCase({'ad1'}, []);

      expect(result, isEmpty);
      verifyNever(mockFavoriteRepository.getFavorite(any, any));
    });

    test('removes favorites that are no longer in newIds', () async {
      when(mockUserRepository.getLocalUser()).thenReturn(testUser);
      final favorite1 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad1'),
        addedAt: DateTime.now(),
      );
      final favorite2 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad2'),
        addedAt: DateTime.now(),
      );
      final currentFavorites = [favorite1, favorite2];

      final result = await useCase({'ad1'}, currentFavorites);

      expect(result, [favorite1]);
      verifyNever(mockFavoriteRepository.getFavorite(any, any));
    });

    test('adds new favorites from newIds', () async {
      when(mockUserRepository.getLocalUser()).thenReturn(testUser);
      final favorite1 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad1'),
        addedAt: DateTime.now(),
      );
      final favorite2 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad2'),
        addedAt: DateTime.now(),
      );
      when(mockFavoriteRepository.getFavorite(testUser.uid, 'ad2')).thenAnswer((_) async => Result.success(favorite2));

      final result = await useCase({'ad1', 'ad2'}, [favorite1]);

      expect(result, [favorite1, favorite2]);
      verify(mockFavoriteRepository.getFavorite(testUser.uid, 'ad2')).called(1);
    });

    test('handles failure when getting new favorite', () async {
      when(mockUserRepository.getLocalUser()).thenReturn(testUser);
      final favorite1 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad1'),
        addedAt: DateTime.now(),
      );
      when(mockFavoriteRepository.getFavorite(testUser.uid, 'ad2'))
          .thenAnswer((_) async => const Result.failure(Failure.server()));

      final result = await useCase({'ad1', 'ad2'}, [favorite1]);

      expect(result, [favorite1]);
      verify(mockFavoriteRepository.getFavorite(testUser.uid, 'ad2')).called(1);
    });

    test('handles both additions and removals', () async {
      when(mockUserRepository.getLocalUser()).thenReturn(testUser);
      final favorite1 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad1'),
        addedAt: DateTime.now(),
      );
      final favorite2 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad2'),
        addedAt: DateTime.now(),
      );
      final favorite3 = FavoriteEntity(
        ad: testAd.copyWith(id: 'ad3'),
        addedAt: DateTime.now(),
      );
      when(mockFavoriteRepository.getFavorite(testUser.uid, 'ad3')).thenAnswer((_) async => Result.success(favorite3));

      final result = await useCase({'ad1', 'ad3'}, [favorite1, favorite2]);

      expect(result, [favorite1, favorite3]);
      verify(mockFavoriteRepository.getFavorite(testUser.uid, 'ad3')).called(1);
    });
  });
}
