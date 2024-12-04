// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      isVerified: json['isVerified'] as bool,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      userType: json['userType'] as String,
      creationDate: const TimestampConverter()
          .fromJson(json['creationDate'] as Timestamp),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'isVerified': instance.isVerified,
      'email': instance.email,
      'displayName': instance.displayName,
      'userType': instance.userType,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
    };
