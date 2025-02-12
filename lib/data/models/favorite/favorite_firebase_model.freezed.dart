// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_firebase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteFirebaseModel _$FavoriteFirebaseModelFromJson(
    Map<String, dynamic> json) {
  return _FavoriteFirebaseModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteFirebaseModel {
  String get adId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this FavoriteFirebaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteFirebaseModelCopyWith<FavoriteFirebaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteFirebaseModelCopyWith<$Res> {
  factory $FavoriteFirebaseModelCopyWith(FavoriteFirebaseModel value,
          $Res Function(FavoriteFirebaseModel) then) =
      _$FavoriteFirebaseModelCopyWithImpl<$Res, FavoriteFirebaseModel>;
  @useResult
  $Res call({String adId, DateTime createdAt});
}

/// @nodoc
class _$FavoriteFirebaseModelCopyWithImpl<$Res,
        $Val extends FavoriteFirebaseModel>
    implements $FavoriteFirebaseModelCopyWith<$Res> {
  _$FavoriteFirebaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      adId: null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteFirebaseModelImplCopyWith<$Res>
    implements $FavoriteFirebaseModelCopyWith<$Res> {
  factory _$$FavoriteFirebaseModelImplCopyWith(
          _$FavoriteFirebaseModelImpl value,
          $Res Function(_$FavoriteFirebaseModelImpl) then) =
      __$$FavoriteFirebaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String adId, DateTime createdAt});
}

/// @nodoc
class __$$FavoriteFirebaseModelImplCopyWithImpl<$Res>
    extends _$FavoriteFirebaseModelCopyWithImpl<$Res,
        _$FavoriteFirebaseModelImpl>
    implements _$$FavoriteFirebaseModelImplCopyWith<$Res> {
  __$$FavoriteFirebaseModelImplCopyWithImpl(_$FavoriteFirebaseModelImpl _value,
      $Res Function(_$FavoriteFirebaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = null,
    Object? createdAt = null,
  }) {
    return _then(_$FavoriteFirebaseModelImpl(
      adId: null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteFirebaseModelImpl extends _FavoriteFirebaseModel {
  const _$FavoriteFirebaseModelImpl(
      {required this.adId, required this.createdAt})
      : super._();

  factory _$FavoriteFirebaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteFirebaseModelImplFromJson(json);

  @override
  final String adId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'FavoriteFirebaseModel(adId: $adId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteFirebaseModelImpl &&
            (identical(other.adId, adId) || other.adId == adId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, adId, createdAt);

  /// Create a copy of FavoriteFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteFirebaseModelImplCopyWith<_$FavoriteFirebaseModelImpl>
      get copyWith => __$$FavoriteFirebaseModelImplCopyWithImpl<
          _$FavoriteFirebaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteFirebaseModelImplToJson(
      this,
    );
  }
}

abstract class _FavoriteFirebaseModel extends FavoriteFirebaseModel {
  const factory _FavoriteFirebaseModel(
      {required final String adId,
      required final DateTime createdAt}) = _$FavoriteFirebaseModelImpl;
  const _FavoriteFirebaseModel._() : super._();

  factory _FavoriteFirebaseModel.fromJson(Map<String, dynamic> json) =
      _$FavoriteFirebaseModelImpl.fromJson;

  @override
  String get adId;
  @override
  DateTime get createdAt;

  /// Create a copy of FavoriteFirebaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteFirebaseModelImplCopyWith<_$FavoriteFirebaseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
