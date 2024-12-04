// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
      postcode: json['postcode'] as String,
      city: json['city'] as String,
      cityCode: json['cityCode'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$CityModelToJson(CityModel instance) => <String, dynamic>{
      'postcode': instance.postcode,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'lat': instance.lat,
      'long': instance.long,
    };

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      postcode: json['postcode'] as String,
      city: json['city'] as String,
      cityCode: json['cityCode'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'postcode': instance.postcode,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'lat': instance.lat,
      'long': instance.long,
    };
