// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: json['id'] as String,
      adId: json['adId'] as String,
      adTitle: json['adTitle'] as String,
      lastMessage: json['lastMessage'] as String,
      photoUrl: json['photoUrl'] as String,
      lastMessageTimestamp: timestampToDateTime(json['lastMessageTimestamp']),
      senderId: json['senderId'] as String,
      renterId: json['renterId'] as String,
      createdAt: timestampToDateTime(json['createdAt']),
      lastMessageRead: json['lastMessageRead'] as bool,
      renterName: json['renterName'] as String,
      senderName: json['senderName'] as String,
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adId': instance.adId,
      'adTitle': instance.adTitle,
      'lastMessage': instance.lastMessage,
      'photoUrl': instance.photoUrl,
      'lastMessageTimestamp': instance.lastMessageTimestamp.toIso8601String(),
      'senderId': instance.senderId,
      'renterId': instance.renterId,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastMessageRead': instance.lastMessageRead,
      'renterName': instance.renterName,
      'senderName': instance.senderName,
    };
