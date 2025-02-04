import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../presentation/domain/entities/ad_entity.dart';

void main() {
  group('AdEntity', () {
    // Sample data for testing
    var adEntity = defaultAd;

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

    test('hasPhoto returns true', () {
      // Arrange
      final ad = adEntity.copyWith(adType: AdType.rent);

      // Act
      final result = ad.hasPhoto();

      // Assert
      expect(result, true); // Assuming 'rent' is translated and price is formatted
    });

    test('hasPhoto returns false', () {
      // Arrange
      final ad = adEntity.copyWith(adType: AdType.rent, photosUrl: []);

      // Act
      final result = ad.hasPhoto();

      // Assert
      expect(result, false); // Assuming 'rent' is translated and price is formatted
    });
  });

  group('adTypeFromString', () {
    test('should return AdType.loan for unknown values', () {
      expect(adTypeFromString('invalid'), AdType.loan);
      expect(adTypeFromString(''), AdType.loan);
      expect(adTypeFromString('somethingElse'), AdType.loan);
    });

    test('should return AdType.loan for "loan"', () {
      expect(adTypeFromString('loan'), AdType.loan);
    });

    test('should return AdType.rent for "rent"', () {
      expect(adTypeFromString('rent'), AdType.rent);
    });
  });
}
