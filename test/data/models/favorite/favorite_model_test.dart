import 'package:assoshare/data/models/ad/ad_model.dart';
import 'package:assoshare/data/models/city/city_model.dart';
import 'package:assoshare/data/models/favorite/favorite_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final testDate = DateTime(2024, 2, 12);
  final testAdModel = AdModel(
    id: 'test1',
    title: 'Test Ad',
    description: 'This is a test ad.',
    price: 100.0,
    adType: 'rent',
    photosUrl: ['photo1.jpg', 'photo2.jpg'],
    city: const CityModel(
      postcode: '44200',
      city: 'Nantes',
      lat: 12.0,
      long: 12.0,
    ),
    renterId: 'user123',
    renterName: 'John Doe',
    renterPhotoUrl: 'profile.jpg',
    creationDate: DateTime(2023, 10, 27),
  );

  final tFavoriteModel = FavoriteModel(
    id: 'test1',
    ad: testAdModel,
    addedAt: testDate,
  );

  group('FavoriteModel', () {
    test('should convert to entity', () {
      // Act
      final result = tFavoriteModel.toEntity();

      // Assert
      expect(result.ad, equals(testAdModel.toEntity()));
      expect(result.addedAt, equals(testDate));
    });
  });
}
