import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const CityModel._();

  @HiveType(typeId: 1, adapterName: 'CityAdapter')
  const factory CityModel(
      {@HiveField(0) required String postcode,
      @HiveField(1) required String city,
      @HiveField(2) required double lat,
      @HiveField(3) required double long}) = _CityModel;

  factory CityModel.fromJson(Map<String, Object?> json) => _$CityModelFromJson(json);

  factory CityModel.fromEntity(CityEntity entity) =>
      CityModel(postcode: entity.postcode, city: entity.city, lat: entity.latLong.lat, long: entity.latLong.long);

  CityEntity toEntity() => CityEntity(postcode: postcode, city: city, latLong: LatLong(lat: lat, long: long));
}
