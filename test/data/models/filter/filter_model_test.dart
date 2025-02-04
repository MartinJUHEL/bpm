import 'package:assoshare/data/models/city/city_model.dart';
import 'package:assoshare/data/models/filter/filter_model.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FilterModel', () {
    const testCityModel = CityModel(
      postcode: '75001',
      city: 'Paris',
      lat: 48.8566,
      long: 2.3522,
    );

    const testCityEntity = CityEntity(
      postcode: '75001',
      city: 'Paris',
      latLong: LatLong(lat: 48.8566, long: 2.3522),
    );

    test('should create FilterModel with correct values', () {
      const filter = FilterModel(city: testCityModel, radius: 10);

      expect(filter.city, testCityModel);
      expect(filter.radius, 10);
    });

    test('should convert from Entity correctly', () {
      const entity = FilterEntity(city: testCityEntity, locationRadius: 10);

      final model = FilterModel.fromEntity(entity);

      expect(model.city, testCityModel);
      expect(model.radius, 10);
    });

    test('should convert from Entity with null values correctly', () {
      const entity = FilterEntity(city: null, locationRadius: null);

      final model = FilterModel.fromEntity(entity);

      expect(model.city, null);
      expect(model.radius, null);
    });

    test('should convert to Entity correctly', () {
      const model = FilterModel(city: testCityModel, radius: 10);

      final entity = model.toEntity();

      expect(entity.city?.postcode, testCityEntity.postcode);
      expect(entity.city?.city, testCityEntity.city);
      expect(entity.city?.latLong.lat, testCityEntity.latLong.lat);
      expect(entity.city?.latLong.long, testCityEntity.latLong.long);
      expect(entity.locationRadius, 10);
    });

    test('should convert to Entity with null values correctly', () {
      const model = FilterModel(city: null, radius: null);

      final entity = model.toEntity();

      expect(entity.city, null);
      expect(entity.locationRadius, null);
    });

    test('should create a copy with new values', () {
      const filter = FilterModel(city: testCityModel, radius: 10);
      const newCity = CityModel(
        postcode: '75002',
        city: 'Paris',
        lat: 48.8566,
        long: 2.3522,
      );

      final copiedFilter = filter.copyWith(city: newCity, radius: 20);

      expect(copiedFilter.city, newCity);
      expect(copiedFilter.radius, 20);
    });

    test('should compare equal models correctly', () {
      const filter1 = FilterModel(city: testCityModel, radius: 10);
      const filter2 = FilterModel(city: testCityModel, radius: 10);

      expect(filter1 == filter2, true);
      expect(filter1.hashCode == filter2.hashCode, true);
    });

    test('should compare different models correctly', () {
      const filter1 = FilterModel(city: testCityModel, radius: 10);
      const filter2 = FilterModel(city: testCityModel, radius: 20);

      expect(filter1 == filter2, false);
    });
  });
} 