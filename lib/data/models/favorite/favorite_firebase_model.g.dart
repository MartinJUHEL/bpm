// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_firebase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteFirebaseModelImpl _$$FavoriteFirebaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteFirebaseModelImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$FavoriteFirebaseModelImplToJson(
        _$FavoriteFirebaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
    };
