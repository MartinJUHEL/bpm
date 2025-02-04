import 'package:assoshare/data/models/city/city_model.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CityModel', () {
    const testPostcode = '75001';
    const testCity = 'Paris';
    const testLat = 48.8566;
    const testLong = 2.3522;

    const cityModel = CityModel(
      postcode: testPostcode,
      city: testCity,
      lat: testLat,
      long: testLong,
    );

    test('should create CityModel with correct values', () {
      expect(cityModel.postcode, testPostcode);
      expect(cityModel.city, testCity);
      expect(cityModel.lat, testLat);
      expect(cityModel.long, testLong);
    });

    test('should convert from JSON correctly', () {
      final json = {
        'postcode': testPostcode,
        'city': testCity,
        'lat': testLat,
        'long': testLong,
      };

      final result = CityModel.fromJson(json);

      expect(result, cityModel);
    });

    test('should convert to JSON correctly', () {
      final json = cityModel.toJson();

      expect(json['postcode'], testPostcode);
      expect(json['city'], testCity);
      expect(json['lat'], testLat);
      expect(json['long'], testLong);
    });

    test('should convert from Entity correctly', () {
      const entity = CityEntity(
        postcode: testPostcode,
        city: testCity,
        latLong: LatLong(lat: testLat, long: testLong),
      );

      final result = CityModel.fromEntity(entity);

      expect(result, cityModel);
    });

    test('should convert to Entity correctly', () {
      final entity = cityModel.toEntity();

      expect(entity.postcode, testPostcode);
      expect(entity.city, testCity);
      expect(entity.latLong.lat, testLat);
      expect(entity.latLong.long, testLong);
    });

    test('should create a copy with new values', () {
      const newPostcode = '75002';
      final copiedCity = cityModel.copyWith(postcode: newPostcode);

      expect(copiedCity.postcode, newPostcode);
      expect(copiedCity.city, testCity);
      expect(copiedCity.lat, testLat);
      expect(copiedCity.long, testLong);
    });

    test('should compare equal models correctly', () {
      const sameCityModel = CityModel(
        postcode: testPostcode,
        city: testCity,
        lat: testLat,
        long: testLong,
      );

      expect(cityModel == sameCityModel, true);
      expect(cityModel.hashCode == sameCityModel.hashCode, true);
    });

    test('should compare different models correctly', () {
      const differentCityModel = CityModel(
        postcode: '75002',
        city: testCity,
        lat: testLat,
        long: testLong,
      );

      expect(cityModel == differentCityModel, false);
    });
  });
}
