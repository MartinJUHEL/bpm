import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sought_ad_model.freezed.dart';
part 'sought_ad_model.g.dart';

/// Model used for algolia.
@freezed
class SoughtAdModel with _$SoughtAdModel {
  const SoughtAdModel._();

  const factory SoughtAdModel(
      {
      // ignore: invalid_annotation_target
      @JsonKey(name: 'objectID') required final String id,
      required final String title,
      required final String description,
      final double? price,
      required final String adType,
      required final String city,
      required final String postcode,
      // ignore: invalid_annotation_target
      @JsonKey(name: '_geoloc') required final GeolocModel geoloc,
      @Default([]) final List<String> photosUrl,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _SoughtAdModel;

  factory SoughtAdModel.fromJson(Map<String, Object?> json) => _$SoughtAdModelFromJson(json);

  AdEntity toEntity() => AdEntity(
      id: id,
      title: title,
      description: description,
      adType: adTypeFromString(adType),
      price: price,
      photosUrl: photosUrl,
      city: CityEntity(postcode: postcode, city: city, latLong: LatLong(lat: geoloc.lat, long: geoloc.lng)),
      renterId: renterId,
      renterName: renterName,
      creationDate: creationDate);
}

@freezed
class GeolocModel with _$GeolocModel {
  const factory GeolocModel({
    required double lat,
    required double lng,
  }) = _GeolocModel;

  factory GeolocModel.fromJson(Map<String, dynamic> json) => _$GeolocModelFromJson(json);
}
