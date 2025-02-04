import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/presentation/blocs/profile_ads/profile_ads_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../domain/entities/ad_entity.dart';
@GenerateNiceMocks([MockSpec<AdRepository>()])
import 'profile_ads_cubit_test.mocks.dart';

// Ajout du dummy pour Result<List<AdEntity>>
void provideDummies() {
  provideDummy<Result<List<AdEntity>>>(const Result.success([]));
  provideDummy<Result<void>>(const Result.success(null));
}

void main() {
  provideDummies();

  group('ProfileAdsCubit', () {
    late ProfileAdsCubit profileAdsCubit;
    late MockAdRepository mockAdRepository;

    final testAd1 = defaultAd;
    final testAd2 = defaultAd.copyWith(
        id: 'test2',
        creationDate: DateTime.now().add(
          const Duration(days: 1),
        ));

    setUp(() {
      mockAdRepository = MockAdRepository();
      profileAdsCubit = ProfileAdsCubit(mockAdRepository);
    });

    tearDown(() {
      profileAdsCubit.close();
    });

    test('initial state should be ProfileAdsInitial', () {
      expect(profileAdsCubit.state, const ProfileAdsState.initial());
    });

    group('fetchAds', () {
      test('should emit ProfileAdsData with sorted ads when repository returns ads', () async {
        // Arrange
        when(mockAdRepository.fetchAdsByUserId('test_uid')).thenAnswer((_) async => Result.success([testAd1, testAd2]));

        // Act
        await profileAdsCubit.fetchAds('test_uid');

        // Assert
        verify(mockAdRepository.fetchAdsByUserId('test_uid')).called(1);
        expect(
          profileAdsCubit.state,
          ProfileAdsState.data([testAd2, testAd1]), // Sorted by creation date
        );
      });

      test('should emit ProfileAdsEmpty when repository returns empty list', () async {
        // Arrange
        when(mockAdRepository.fetchAdsByUserId('test_uid')).thenAnswer((_) async => const Result.success([]));

        // Act
        await profileAdsCubit.fetchAds('test_uid');

        // Assert
        verify(mockAdRepository.fetchAdsByUserId('test_uid')).called(1);
        expect(profileAdsCubit.state, const ProfileAdsState.empty());
      });

      test('should emit ProfileAdsError when repository returns failure', () async {
        // Arrange
        when(mockAdRepository.fetchAdsByUserId('test_uid'))
            .thenAnswer((_) async => const Result.failure(Failure.server()));

        // Act
        await profileAdsCubit.fetchAds('test_uid');

        // Assert
        verify(mockAdRepository.fetchAdsByUserId('test_uid')).called(1);
        expect(profileAdsCubit.state, const ProfileAdsState.error());
      });
    });

    group('deleteAd', () {
      test('should update state with remaining ads when deletion succeeds', () async {
        // Arrange
        when(mockAdRepository.fetchAdsByUserId('test_uid')).thenAnswer((_) async => Result.success([testAd1, testAd2]));
        when(mockAdRepository.deleteAd(testAd1.id)).thenAnswer((_) async => const Result.success(null));

        // Act
        await profileAdsCubit.fetchAds('test_uid');
        await profileAdsCubit.deleteAd(testAd1.id);

        // Assert
        verify(mockAdRepository.deleteAd(testAd1.id)).called(1);
        expect(profileAdsCubit.state, ProfileAdsState.data([testAd2]));
      });

      test('should not update state when deletion fails', () async {
        // Arrange
        when(mockAdRepository.fetchAdsByUserId('test_uid')).thenAnswer((_) async => Result.success([testAd1, testAd2]));
        when(mockAdRepository.deleteAd(testAd1.id)).thenAnswer((_) async => const Result.failure(Failure.server()));

        // Act
        await profileAdsCubit.fetchAds('test_uid');
        await profileAdsCubit.deleteAd(testAd1.id);

        // Assert
        verify(mockAdRepository.deleteAd(testAd1.id)).called(1);
        expect(profileAdsCubit.state, ProfileAdsState.data([testAd2, testAd1]));
      });

      test('should not call repository when state is not ProfileAdsData', () async {
        // Act
        await profileAdsCubit.deleteAd(testAd1.id);

        // Assert
        verifyNever(mockAdRepository.deleteAd(any));
        expect(profileAdsCubit.state, const ProfileAdsState.initial());
      });
    });
  });
}
