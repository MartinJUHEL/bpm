import 'package:assoshare/data/models/ad/ad_page_model.dart';
import 'package:assoshare/data/models/ad/sought_ad_model.dart';
import 'package:assoshare/domain/entities/ad/ads_page_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AdPageModel', () {
    final mockSoughtAdModel = SoughtAdModel(
      id: 'test-id',
      title: 'Test Title',
      description: 'Test Description',
      adType: 'OFFER',
      city: 'Paris',
      postcode: '75000',
      geoloc: const GeolocModel(lat: 48.8566, lng: 2.3522),
      renterId: 'renter-id',
      renterName: 'Test Renter',
      creationDate: DateTime(2024),
    );

    test('should create AdPageModel instance', () {
      final model = AdPageModel(
        ads: [mockSoughtAdModel],
        total: 1,
      );

      expect(model.ads, [mockSoughtAdModel]);
      expect(model.total, 1);
    });

    test('should convert to AdsPageEntity', () {
      final model = AdPageModel(
        ads: [mockSoughtAdModel],
        total: 1,
      );

      final entity = model.toEntity();

      expect(entity, isA<AdsPageEntity>());
      expect(entity.ads.length, 1);
      expect(entity.total, 1);
      expect(entity.ads.first, mockSoughtAdModel.toEntity());
    });
  });
} 