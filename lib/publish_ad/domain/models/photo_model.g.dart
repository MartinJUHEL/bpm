// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoModelImpl _$$PhotoModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoModelImpl(
      adId: json['adId'] as String,
      path: json['path'] as String? ?? null,
      name: json['name'] as String? ?? "",
      status: $enumDecodeNullable(_$PhotoStatusEnumMap, json['status']) ??
          PhotoStatus.init,
    );

Map<String, dynamic> _$$PhotoModelImplToJson(_$PhotoModelImpl instance) =>
    <String, dynamic>{
      'adId': instance.adId,
      'path': instance.path,
      'name': instance.name,
      'status': _$PhotoStatusEnumMap[instance.status]!,
    };

const _$PhotoStatusEnumMap = {
  PhotoStatus.init: 'init',
  PhotoStatus.uploading: 'uploading',
  PhotoStatus.uploaded: 'uploaded',
  PhotoStatus.error: 'error',
};
