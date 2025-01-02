import 'package:assoshare/core/utils/converters/timestamp_converter.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel(
      {required final String uid,
      required final bool isVerified,
      required final String email,
      required final String displayName,
      required final String userType,
      @TimestampConverter() required final DateTime creationDate}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  factory UserModel.fromEntity(UserEntity user) => UserModel(
      uid: user.uid,
      isVerified: user.isVerified,
      email: user.email,
      displayName: user.displayName,
      userType: user.userType.name,
      creationDate: user.creationDate);

  UserEntity toEntity() => UserEntity(
      uid: uid,
      isVerified: isVerified,
      email: email,
      displayName: displayName,
      userType: userTypeFromString(userType),
      creationDate: creationDate);

  UserType userTypeFromString(String value) =>
      UserType.values.firstWhereOrNull((type) => type.name == value) ?? UserType.association;
}
