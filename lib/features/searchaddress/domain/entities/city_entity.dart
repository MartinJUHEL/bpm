import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_entity.freezed.dart';

@freezed
class CityEntity with _$CityEntity {
  const CityEntity._();

  const factory CityEntity(
      {required String postcode,
      required String city,
      required String cityCode,
      required LatLong latLong}) = _CityEntity;

  String displayCity() {
    return '$city, $postcode';
  }
}
