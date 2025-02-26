// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      senderId: json['senderId'] as String,
      timestamp: timestampToDateTime(json['timestamp']),
      type: json['type'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': instance.senderId,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': instance.type,
      'status': instance.status,
    };
