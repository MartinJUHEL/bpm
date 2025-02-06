import 'package:assoshare/data/models/ad/sought_ad_model.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SoughtAdModel', () {
    final DateTime testDate = DateTime(2024);
    final Map<String, dynamic> validJson = {
      'objectID': '123',
      'title': 'Test Ad',
      'description': 'Test Description',
      'price': 100.0,
      'adType': 'OFFER',
      'city': 'Paris',
      'postcode': '75001',
      '_geoloc': {
        'lat': 48.8566,
        'lng': 2.3522,
      },
      'photosUrl': ['url1', 'url2'],
      'renterId': 'renter123',
      'renterName': 'John Doe',
      'renterPhotoUrl': 'photo_url',
      'creationDate': testDate.toIso8601String(),
    };

    test('should create SoughtAdModel from JSON', () {
      final result = SoughtAdModel.fromJson(validJson);

      expect(result.id, '123');
      expect(result.title, 'Test Ad');
      expect(result.description, 'Test Description');
      expect(result.price, 100.0);
      expect(result.adType, 'OFFER');
      expect(result.city, 'Paris');
      expect(result.postcode, '75001');
      expect(result.geoloc.lat, 48.8566);
      expect(result.geoloc.lng, 2.3522);
      expect(result.photosUrl, ['url1', 'url2']);
      expect(result.renterId, 'renter123');
      expect(result.renterName, 'John Doe');
      expect(result.renterPhotoUrl, 'photo_url');
      expect(result.creationDate, testDate);
    });

    test('should convert SoughtAdModel to JSON', () {
      final model = SoughtAdModel(
        id: '123',
        title: 'Test Ad',
        description: 'Test Description',
        price: 100.0,
        adType: 'OFFER',
        city: 'Paris',
        postcode: '75001',
        geoloc: const GeolocModel(lat: 48.8566, lng: 2.3522),
        photosUrl: ['url1', 'url2'],
        renterId: 'renter123',
        renterName: 'John Doe',
        renterPhotoUrl: 'photo_url',
        creationDate: testDate,
      );

      final result = model.toJson();

      expect(result['objectID'], '123');
      expect(result['title'], 'Test Ad');
      expect(result['description'], 'Test Description');
      expect(result['price'], 100.0);
      expect(result['adType'], 'OFFER');
      expect(result['city'], 'Paris');
      expect(result['postcode'], '75001');
      expect(result['_geoloc']['lat'], 48.8566);
      expect(result['_geoloc']['lng'], 2.3522);
      expect(result['photosUrl'], ['url1', 'url2']);
      expect(result['renterId'], 'renter123');
      expect(result['renterName'], 'John Doe');
      expect(result['renterPhotoUrl'], 'photo_url');
      expect(result['creationDate'], testDate.toIso8601String());
    });

    test('should convert SoughtAdModel to AdEntity', () {
      final model = SoughtAdModel(
        id: '123',
        title: 'Test Ad',
        description: 'Test Description',
        price: 100.0,
        adType: 'rent',
        city: 'Paris',
        postcode: '75001',
        geoloc: const GeolocModel(lat: 48.8566, lng: 2.3522),
        photosUrl: ['url1', 'url2'],
        renterId: 'renter123',
        renterName: 'John Doe',
        renterPhotoUrl: 'photo_url',
        creationDate: testDate,
      );

      final entity = model.toEntity();

      expect(entity.id, '123');
      expect(entity.title, 'Test Ad');
      expect(entity.description, 'Test Description');
      expect(entity.price, 100.0);
      expect(entity.adType, AdType.rent);
      expect(entity.city.city, 'Paris');
      expect(entity.city.postcode, '75001');
      expect(entity.city.latLong.lat, 48.8566);
      expect(entity.city.latLong.long, 2.3522);
      expect(entity.photosUrl, ['url1', 'url2']);
      expect(entity.renterId, 'renter123');
      expect(entity.renterName, 'John Doe');
      expect(entity.creationDate, testDate);
    });

    test('should handle null price and renterPhotoUrl', () {
      final jsonWithNulls = Map<String, dynamic>.from(validJson)
        ..['price'] = null
        ..['renterPhotoUrl'] = null;

      final result = SoughtAdModel.fromJson(jsonWithNulls);

      expect(result.price, null);
      expect(result.renterPhotoUrl, null);
    });

    test('should convert different adTypes correctly', () {
      final loanModel = SoughtAdModel.fromJson(Map<String, dynamic>.from(validJson)..['adType'] = 'loan');
      final rentModel = SoughtAdModel.fromJson(Map<String, dynamic>.from(validJson)..['adType'] = 'rent');
      final offerModel = SoughtAdModel.fromJson(Map<String, dynamic>.from(validJson)..['adType'] = 'OFFER');

      expect(loanModel.toEntity().adType, AdType.loan);
      expect(rentModel.toEntity().adType, AdType.rent);
      expect(offerModel.toEntity().adType, AdType.loan); // Default case
    });
  });

  group('GeolocModel', () {
    test('should create GeolocModel from JSON', () {
      final json = {
        'lat': 48.8566,
        'lng': 2.3522,
      };

      final result = GeolocModel.fromJson(json);

      expect(result.lat, 48.8566);
      expect(result.lng, 2.3522);
    });

    test('should convert GeolocModel to JSON', () {
      const model = GeolocModel(lat: 48.8566, lng: 2.3522);

      final result = model.toJson();

      expect(result['lat'], 48.8566);
      expect(result['lng'], 2.3522);
    });

    test('should compare equal models correctly', () {
      const model1 = GeolocModel(lat: 48.8566, lng: 2.3522);
      const model2 = GeolocModel(lat: 48.8566, lng: 2.3522);

      expect(model1 == model2, true);
      expect(model1.hashCode == model2.hashCode, true);
    });

    test('should compare different models correctly', () {
      const model1 = GeolocModel(lat: 48.8566, lng: 2.3522);
      const model2 = GeolocModel(lat: 48.8567, lng: 2.3522);

      expect(model1 == model2, false);
    });
  });
}
