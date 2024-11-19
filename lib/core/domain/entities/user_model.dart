import 'package:assoshare/core/utils/converters/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required final String uid,
    required final bool isVerified,
    required final String email,
    required final String displayName,
    required final UserType userType,
    @TimestampConverter()
    required final DateTime creationDate
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

enum UserType { individual, association }
