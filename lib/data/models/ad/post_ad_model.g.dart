// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostAdModelImpl _$$PostAdModelImplFromJson(Map<String, dynamic> json) =>
    _$PostAdModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toInt(),
      adType: json['adType'] as String,
      city: CityModel.fromJson(json['city'] as Map<String, dynamic>),
      renterId: json['renterId'] as String,
      renterName: json['renterName'] as String,
      renterPhotoUrl: json['renterPhotoUrl'] as String?,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$$PostAdModelImplToJson(_$PostAdModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'adType': instance.adType,
      'city': instance.city.toJson(),
      'renterId': instance.renterId,
      'renterName': instance.renterName,
      'renterPhotoUrl': instance.renterPhotoUrl,
      'creationDate': instance.creationDate.toIso8601String(),
    };
