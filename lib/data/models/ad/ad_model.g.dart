// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdEntityImpl _$$AdEntityImplFromJson(Map<String, dynamic> json) =>
    _$AdEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toDouble(),
      adType: json['adType'] as String,
      photosUrl: (json['photosUrl'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
      renterId: json['renterId'] as String,
      renterName: json['renterName'] as String,
      renterPhotoUrl: json['renterPhotoUrl'] as String?,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$AdEntityImplToJson(_$AdEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'adType': instance.adType,
      'photosUrl': instance.photosUrl,
      'city': instance.city.toJson(),
      'renterId': instance.renterId,
      'renterName': instance.renterName,
      'renterPhotoUrl': instance.renterPhotoUrl,
      'creationDate': instance.creationDate.toIso8601String(),
    };
