import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity(
      {required final String uid,
      required final bool isVerified,
      required final String email,
      required final String displayName,
      required final UserType userType,
      required final DateTime creationDate}) = _UserEntity;
}

enum UserType { individual, association }
