// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressResultModelImpl _$$AddressResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressResultModelImpl(
      type: json['type'] as String?,
      version: json['version'] as String?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => Features.fromJson(e as Map<String, dynamic>))
          .toList(),
      attribution: json['attribution'] as String?,
      licence: json['licence'] as String?,
      query: json['query'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddressResultModelImplToJson(
        _$AddressResultModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
      'features': instance.features?.map((e) => e.toJson()).toList(),
      'attribution': instance.attribution,
      'licence': instance.licence,
      'query': instance.query,
      'limit': instance.limit,
    };

_$FeaturesImpl _$$FeaturesImplFromJson(Map<String, dynamic> json) =>
    _$FeaturesImpl(
      type: json['type'] as String?,
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties: json['properties'] == null
          ? null
          : Properties.fromJson(json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeaturesImplToJson(_$FeaturesImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'geometry': instance.geometry.toJson(),
      'properties': instance.properties?.toJson(),
    };

_$PropertiesImpl _$$PropertiesImplFromJson(Map<String, dynamic> json) =>
    _$PropertiesImpl(
      label: json['label'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      houseNumber: json['houseNumber'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      postcode: json['postcode'] as String?,
      citycode: json['citycode'] as String?,
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      city: json['city'] as String?,
      context: json['context'] as String?,
      importance: (json['importance'] as num?)?.toDouble(),
      street: json['street'] as String?,
    );

Map<String, dynamic> _$$PropertiesImplToJson(_$PropertiesImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'score': instance.score,
      'houseNumber': instance.houseNumber,
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'postcode': instance.postcode,
      'citycode': instance.citycode,
      'x': instance.x,
      'y': instance.y,
      'city': instance.city,
      'context': instance.context,
      'importance': instance.importance,
      'street': instance.street,
    };

_$GeometryImpl _$$GeometryImplFromJson(Map<String, dynamic> json) =>
    _$GeometryImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$GeometryImplToJson(_$GeometryImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
