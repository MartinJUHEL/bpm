import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_helper.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await setupSharedPreferences();
    await EasyLocalization.ensureInitialized();
  });

  group('FilterEntity', () {
    const testCity = CityEntity(
      postcode: '75001',
      city: 'Paris',
      latLong: LatLong(lat: 48.8566, long: 2.3522),
    );

    test('should create FilterEntity with correct values', () {
      const filter = FilterEntity(city: testCity, locationRadius: 10);

      expect(filter.city, testCity);
      expect(filter.locationRadius, 10);
    });

    test('should create default filter with correct values', () {
      final defaultFilter = FilterEntity.defaultFilter;

      expect(defaultFilter.city?.city, 'Rennes');
      expect(defaultFilter.city?.postcode, '35000');
      expect(defaultFilter.locationRadius, FilterEntity.radiusValues.first);
    });

    testWidgets('should display filter location string with radius',
        (tester) async {
      const filter = FilterEntity(city: testCity, locationRadius: 10);

      await tester.pumpWidget(setupLocalizeWidget());
      await tester.pumpAndSettle();

      expect(filter.displayFilterLocationString(), 'Paris, 75001 - 10 Km');
    });

    testWidgets('should display filter location string without radius',
        (tester) async {
      const filter = FilterEntity(city: testCity, locationRadius: null);
      expect(filter.displayFilterLocationString(), 'Paris, 75001');
    });

    testWidgets('should display filter location string without city',
        (tester) async {
      const filter = FilterEntity(city: null, locationRadius: null);
      await tester.pumpWidget(setupLocalizeWidget());
      await tester.pumpAndSettle();
      expect(filter.displayFilterLocationString(), 'allOverFrance'.tr());
    });

    testWidgets('should display radius string correctly', (tester) async {
      const filter = FilterEntity(city: testCity, locationRadius: 10);
      await tester.pumpWidget(setupLocalizeWidget());
      await tester.pumpAndSettle();
      expect(filter.displayRadiusString(), '10 Km');
    });

    testWidgets('should return empty string for null radius', (tester) async {
      const filter = FilterEntity(city: testCity, locationRadius: null);
      expect(filter.displayRadiusString(), '');
    });

    test('should get correct index of radius', () {
      const filter = FilterEntity(city: testCity, locationRadius: 20);
      expect(filter.getIndexOfRadius(), 2); // 20 is at index 2 in radiusValues
    });

    test('should get radius from index correctly', () {
      const filter = FilterEntity(city: testCity, locationRadius: 10);
      expect(filter.getRadiusFromIndex(2), 20); // Index 2 corresponds to 20km
    });

    test('should create a copy with new values', () {
      const filter = FilterEntity(city: testCity, locationRadius: 10);
      const newCity = CityEntity(
        postcode: '75002',
        city: 'Paris',
        latLong: LatLong(lat: 48.8566, long: 2.3522),
      );

      final copiedFilter = filter.copyWith(city: newCity, locationRadius: 20);

      expect(copiedFilter.city, newCity);
      expect(copiedFilter.locationRadius, 20);
    });

    test('should compare equal filters correctly', () {
      const filter1 = FilterEntity(city: testCity, locationRadius: 10);
      const filter2 = FilterEntity(city: testCity, locationRadius: 10);

      expect(filter1 == filter2, true);
      expect(filter1.hashCode == filter2.hashCode, true);
    });

    test('should compare different filters correctly', () {
      const filter1 = FilterEntity(city: testCity, locationRadius: 10);
      const filter2 = FilterEntity(city: testCity, locationRadius: 20);

      expect(filter1 == filter2, false);
    });
  });
}
