// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sought_ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoughtAdModelImpl _$$SoughtAdModelImplFromJson(Map<String, dynamic> json) =>
    _$SoughtAdModelImpl(
      id: json['objectID'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toDouble(),
      adType: json['adType'] as String,
      city: json['city'] as String,
      postcode: json['postcode'] as String,
      geoloc: GeolocModel.fromJson(json['_geoloc'] as Map<String, dynamic>),
      photosUrl: (json['photosUrl'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      renterId: json['renterId'] as String,
      renterName: json['renterName'] as String,
      renterPhotoUrl: json['renterPhotoUrl'] as String?,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$SoughtAdModelImplToJson(_$SoughtAdModelImpl instance) =>
    <String, dynamic>{
      'objectID': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'adType': instance.adType,
      'city': instance.city,
      'postcode': instance.postcode,
      '_geoloc': instance.geoloc.toJson(),
      'photosUrl': instance.photosUrl,
      'renterId': instance.renterId,
      'renterName': instance.renterName,
      'renterPhotoUrl': instance.renterPhotoUrl,
      'creationDate': instance.creationDate.toIso8601String(),
    };

_$GeolocModelImpl _$$GeolocModelImplFromJson(Map<String, dynamic> json) =>
    _$GeolocModelImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$GeolocModelImplToJson(_$GeolocModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
