import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../presentation/domain/entities/city_entity.dart';

void main() {
  group('AdEntity', () {
    // Sample data for testing
    const city = defaultCity;
    var adEntity = AdEntity(
      id: '1',
      title: 'Test Ad',
      description: 'This is a test ad.',
      price: 100.0,
      adType: AdType.rent,
      photosUrl: const ['photo1.jpg', 'photo2.jpg'],
      city: city,
      renterId: 'user123',
      renterName: 'John Doe',
      renterPhotoUrl: 'profile.jpg',
      creationDate: DateTime(2023, 10, 27),
    );

    test('displayTypeAndPrice returns correct string for loan type', () {
      // Arrange
      final ad = adEntity.copyWith(adType: AdType.loan, price: null);

      // Act
      final result = ad.displayTypeAndPrice();

      // Assert
      expect(result, 'loan'.tr());
    });

    test('displayTypeAndPrice returns correct string for rent type', () {
      // Arrange
      final ad = adEntity.copyWith(adType: AdType.rent, price: 123.45);

      // Act
      final result = ad.displayTypeAndPrice(locale: const Locale('en', 'US'));

      // Assert
      expect(result, '${'rent'.tr()} : \$123.45'); // Assuming 'rent' is translated and price is formatted
    });
  });
}
