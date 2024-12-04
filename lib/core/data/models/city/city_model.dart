import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true, includeIfNull: true)
class CityModel with _$CityModel {
  const CityModel._();

  const factory CityModel({required String postcode,
    required String city,
    required String cityCode,
    required double lat,
    required double long}) = _CityModel;

  factory CityModel.fromJson(Map<String, Object?> json) => _$CityModelFromJson(json);

  factory CityModel.fromEntity(CityEntity entity) =>
      CityModel(postcode: entity.postcode,
          city: entity.city,
          cityCode: entity.cityCode,
          lat: entity.latLong.lat,
          long: entity.latLong.long);

  CityEntity toEntity() =>
      CityEntity(postcode: postcode, city: city, cityCode: cityCode, latLong: LatLong(lat: lat, long: long));
}
