import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/photo/photo_entity.dart';
import 'package:assoshare/presentation/blocs/publish_ad/publish_ad_bloc/publish_ad_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';

import '../../../domain/entities/city_entity.dart';

void main() {
  group('PublishAdState', () {
    test('default values are correct', () {
      const state = PublishAdState();
      expect(state.pageIndex, 0);
      expect(state.title, '');
      expect(state.isTitleValid, false);
      expect(state.description, '');
      expect(state.price, null);
      expect(state.adType, null);
      expect(state.isDescriptionValid, false);
      expect(state.photos, isEmpty);
      expect(state.city, null);
      expect(state.errorMessage, '');
      expect(state.isLoading, false);
      expect(state.isPublished, false);
    });

    test('copyWith works correctly', () {
      const state = PublishAdState();
      final newState = state.copyWith(
        pageIndex: 1,
        title: 'New Title',
        isTitleValid: true,
        description: 'New Description',
        price: 100,
        adType: AdType.rent,
        isDescriptionValid: true,
        photos: [PhotoEntity.fromFile(XFile('path/to/file'))],
        city: defaultCity,
        errorMessage: 'Error',
        isLoading: true,
        isPublished: true,
      );

      expect(newState.pageIndex, 1);
      expect(newState.title, 'New Title');
      expect(newState.isTitleValid, true);
      expect(newState.description, 'New Description');
      expect(newState.price, 100);
      expect(newState.adType, AdType.rent);
      expect(newState.isDescriptionValid, true);
      expect(newState.photos, isNotEmpty);
      expect(newState.city, isNotNull);
      expect(newState.errorMessage, 'Error');
      expect(newState.isLoading, true);
      expect(newState.isPublished, true);
    });

    test('getPageNumber returns correct value for AdType.loan', () {
      const state = PublishAdState(adType: AdType.loan);
      expect(state.getPageNumber(), 5);
    });

    test('getPageNumber returns correct value for other AdTypes', () {
      const state = PublishAdState(adType: AdType.rent);
      expect(state.getPageNumber(), 6);
    });
  });
}
