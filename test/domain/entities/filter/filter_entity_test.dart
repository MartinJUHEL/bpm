import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

    test('should display filter location string with radius', () {
      const filter = FilterEntity(city: testCity, locationRadius: 10);

      expect(filter.displayFilterLocationString(), 'Paris, 75001 - 10 km');
    });

    test('should display filter location string without radius', () {
      const filter = FilterEntity(city: testCity, locationRadius: null);

      expect(filter.displayFilterLocationString(), 'Paris, 75001');
    });

    test('should display filter location string without city', () {
      const filter = FilterEntity(city: null, locationRadius: null);

      expect(filter.displayFilterLocationString(), 'allOverFrance');
    });

    test('should display radius string correctly', () {
      const filter = FilterEntity(city: testCity, locationRadius: 10);

      expect(filter.displayRadiusString(), '10 km');
    });

    test('should return empty string for null radius', () {
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
      final newCity = CityEntity(
        postcode: '75002',
        city: 'Paris',
        latLong: const LatLong(lat: 48.8566, long: 2.3522),
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