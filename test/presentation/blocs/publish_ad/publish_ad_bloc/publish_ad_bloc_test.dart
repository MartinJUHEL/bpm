import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/domain/usecases/publish_ad/is_ad_description_valid_use_case.dart';
import 'package:assoshare/domain/usecases/publish_ad/is_ad_title_valid_use_case.dart';
import 'package:assoshare/presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../shared_mocks.mocks.dart';
import '../../../domain/entities/city_entity.dart';
import '../../../domain/entities/user_entity.dart';
import 'publish_ad_bloc_test.mocks.dart';

@GenerateMocks([IsAdTitleValidUseCase, IsAdDescriptionValidUseCase, AdRepository])
void main() {
  late MockIsAdTitleValidUseCase mockIsAdTitleValidUseCase;
  late MockIsAdDescriptionValidUseCase mockIsAdDescriptionValidUseCase;
  late MockAdRepository mockAdRepository;
  late MockUserRepository mockUserRepository;
  late PublishAdCubit cubit;

  provideDummy<Result<void>>(const Result.success(null));

  setUp(() {
    mockIsAdTitleValidUseCase = MockIsAdTitleValidUseCase();
    mockIsAdDescriptionValidUseCase = MockIsAdDescriptionValidUseCase();
    mockAdRepository = MockAdRepository();
    mockUserRepository = MockUserRepository();
    cubit = PublishAdCubit(
        mockIsAdTitleValidUseCase, mockIsAdDescriptionValidUseCase, mockAdRepository, mockUserRepository);
  });

  group('PublishAdCubit', () {
    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onMovedToNextPage is called',
      build: () => cubit,
      act: (cubit) => cubit.onMovedToNextPage(),
      expect: () => [const PublishAdState(pageIndex: 1)],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onMovedToPreviousPage is called',
      build: () => cubit,
      seed: () => const PublishAdState(pageIndex: 2), // Set initial state
      act: (cubit) => cubit.onMovedToPreviousPage(),
      expect: () => [const PublishAdState(pageIndex: 1)],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onTitleChanged is called',
      build: () {
        when(mockIsAdTitleValidUseCase.execute(any)).thenReturn(true); // Mock use case
        return cubit;
      },
      act: (cubit) => cubit.onTitleChanged('New Title'),
      expect: () => [const PublishAdState(title: 'New Title', isTitleValid: true)],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onDescriptionChanged is called',
      build: () {
        when(mockIsAdDescriptionValidUseCase.execute(any)).thenReturn(true); // Mock use case
        return cubit;
      },
      act: (cubit) => cubit.onDescriptionChanged('New Description'),
      expect: () => [const PublishAdState(description: 'New Description', isDescriptionValid: true)],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onSavedPhotos is called',
      build: () => cubit,
      act: (cubit) => cubit.onSavedPhotos([PhotoEntity.fromFile(XFile('path/to/file'))]),
      expect: () => [
        PublishAdState(photos: [PhotoEntity.fromFile(XFile('path/to/file'))], pageIndex: 1)
      ],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onCitySaved is called',
      build: () => cubit,
      act: (cubit) => cubit.onCitySaved(defaultCity),
      expect: () => [const PublishAdState(city: defaultCity), const PublishAdState(city: defaultCity, pageIndex: 1)],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onAdTypeSelected is called',
      build: () => cubit,
      act: (cubit) => cubit.onAdTypeSelected(AdType.rent),
      expect: () =>
          [const PublishAdState(adType: AdType.rent), const PublishAdState(adType: AdType.rent, pageIndex: 1)],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits updated state when onPriceChanged is called',
      build: () => cubit,
      act: (cubit) => cubit.onPriceChanged(100),
      expect: () => [
        const PublishAdState(price: 100),
      ],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits loading and published states when onPostClicked is successful',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(defaultUser);
        when(mockAdRepository.postAd(any)).thenAnswer((_) async => const Result.success(null)); // Mock success
        return cubit
          ..onCitySaved(defaultCity)
          ..onAdTypeSelected(AdType.rent);
      },
      act: (cubit) => cubit.onPostClicked(),
      expect: () => [
        const PublishAdState(city: defaultCity, adType: AdType.rent, isLoading: true, pageIndex: 2),
        const PublishAdState(city: defaultCity, adType: AdType.rent, isLoading: false, isPublished: true, pageIndex: 2)
      ],
    );

    blocTest<PublishAdCubit, PublishAdState>(
      'emits loading and error states when onPostClicked fails',
      build: () {
        when(mockUserRepository.getLocalUser()).thenReturn(defaultUser);
        when(mockAdRepository.postAd(any)).thenAnswer((_) async => const IsFailure(Failure.server())); // Mock failure
        return cubit
          ..onCitySaved(defaultCity)
          ..onAdTypeSelected(AdType.rent);
      },
      act: (cubit) => cubit.onPostClicked(),
      expect: () => [
        const PublishAdState(city: defaultCity, adType: AdType.rent, pageIndex: 2, isLoading: true),
        const PublishAdState(city: defaultCity, adType: AdType.rent, pageIndex: 2, isLoading: false, isPublished: false)
      ],
    );
  });
}
