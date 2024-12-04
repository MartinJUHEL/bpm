import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:assoshare/core/utils/TextUtils.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressResultModel with _$AddressResultModel {
  const AddressResultModel._();

  const factory AddressResultModel({
    String? type,
    String? version,
    List<Features>? features,
    String? attribution,
    String? licence,
    String? query,
    int? limit,
  }) = _AddressResultModel;

  factory AddressResultModel.fromJson(Map<String, Object?> json) => _$AddressResultModelFromJson(json);

  List<CityEntity> toCities() => features?.map((feature) => feature.toCityEntity()).toList() ?? List.empty();
}

@freezed
class Features with _$Features {
  const Features._();

  const factory Features({
    String? type,
    required Geometry geometry,
    Properties? properties,
  }) = _Features;

  factory Features.fromJson(Map<String, Object?> json) => _$FeaturesFromJson(json);

  CityEntity toCityEntity() => CityEntity(
      postcode: properties?.postcode ?? empty,
      city: properties?.city ?? empty,
      cityCode: properties?.citycode ?? empty,
      latLong: LatLong(lat: geometry.coordinates[1], long: geometry.coordinates[0]));
}

@freezed
class Properties with _$Properties {
  const factory Properties({
    String? label,
    double? score,
    String? houseNumber,
    String? id,
    String? type,
    String? name,
    String? postcode,
    String? citycode,
    double? x,
    double? y,
    String? city,
    String? context,
    double? importance,
    String? street,
  }) = _Properties;

  factory Properties.fromJson(Map<String, Object?> json) => _$PropertiesFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    String? type,
    required List<double> coordinates,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, Object?> json) => _$GeometryFromJson(json);
}
