import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CityEntity', () {
    const testPostcode = '75001';
    const testCity = 'Paris';
    const testLat = 48.8566;
    const testLong = 2.3522;

    final cityEntity = const CityEntity(
      postcode: testPostcode,
      city: testCity,
      latLong: LatLong(lat: testLat, long: testLong),
    );

    test('should create CityEntity with correct values', () {
      expect(cityEntity.postcode, testPostcode);
      expect(cityEntity.city, testCity);
      expect(cityEntity.latLong.lat, testLat);
      expect(cityEntity.latLong.long, testLong);
    });

    test('should display city correctly', () {
      expect(cityEntity.displayCity(), '$testCity, $testPostcode');
    });

    test('should create a copy with new values', () {
      const newPostcode = '75002';
      final copiedCity = cityEntity.copyWith(postcode: newPostcode);

      expect(copiedCity.postcode, newPostcode);
      expect(copiedCity.city, testCity);
      expect(copiedCity.latLong, cityEntity.latLong);
    });

    test('should compare equal entities correctly', () {
      const sameCityEntity = CityEntity(
        postcode: testPostcode,
        city: testCity,
        latLong: LatLong(lat: testLat, long: testLong),
      );

      expect(cityEntity == sameCityEntity, true);
      expect(cityEntity.hashCode == sameCityEntity.hashCode, true);
    });

    test('should compare different entities correctly', () {
      const differentCityEntity = CityEntity(
        postcode: '75002',
        city: testCity,
        latLong: LatLong(lat: testLat, long: testLong),
      );

      expect(cityEntity == differentCityEntity, false);
    });
  });
}
