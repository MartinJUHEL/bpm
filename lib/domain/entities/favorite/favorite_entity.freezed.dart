// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEntity {
  AdEntity get ad => throw _privateConstructorUsedError;
  DateTime get addedAt => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteEntityCopyWith<FavoriteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEntityCopyWith<$Res> {
  factory $FavoriteEntityCopyWith(
          FavoriteEntity value, $Res Function(FavoriteEntity) then) =
      _$FavoriteEntityCopyWithImpl<$Res, FavoriteEntity>;
  @useResult
  $Res call({AdEntity ad, DateTime addedAt});

  $AdEntityCopyWith<$Res> get ad;
}

/// @nodoc
class _$FavoriteEntityCopyWithImpl<$Res, $Val extends FavoriteEntity>
    implements $FavoriteEntityCopyWith<$Res> {
  _$FavoriteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = null,
    Object? addedAt = null,
  }) {
    return _then(_value.copyWith(
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as AdEntity,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdEntityCopyWith<$Res> get ad {
    return $AdEntityCopyWith<$Res>(_value.ad, (value) {
      return _then(_value.copyWith(ad: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteEntityImplCopyWith<$Res>
    implements $FavoriteEntityCopyWith<$Res> {
  factory _$$FavoriteEntityImplCopyWith(_$FavoriteEntityImpl value,
          $Res Function(_$FavoriteEntityImpl) then) =
      __$$FavoriteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdEntity ad, DateTime addedAt});

  @override
  $AdEntityCopyWith<$Res> get ad;
}

/// @nodoc
class __$$FavoriteEntityImplCopyWithImpl<$Res>
    extends _$FavoriteEntityCopyWithImpl<$Res, _$FavoriteEntityImpl>
    implements _$$FavoriteEntityImplCopyWith<$Res> {
  __$$FavoriteEntityImplCopyWithImpl(
      _$FavoriteEntityImpl _value, $Res Function(_$FavoriteEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ad = null,
    Object? addedAt = null,
  }) {
    return _then(_$FavoriteEntityImpl(
      ad: null == ad
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as AdEntity,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FavoriteEntityImpl implements _FavoriteEntity {
  const _$FavoriteEntityImpl({required this.ad, required this.addedAt});

  @override
  final AdEntity ad;
  @override
  final DateTime addedAt;

  @override
  String toString() {
    return 'FavoriteEntity(ad: $ad, addedAt: $addedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteEntityImpl &&
            (identical(other.ad, ad) || other.ad == ad) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ad, addedAt);

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteEntityImplCopyWith<_$FavoriteEntityImpl> get copyWith =>
      __$$FavoriteEntityImplCopyWithImpl<_$FavoriteEntityImpl>(
          this, _$identity);
}

abstract class _FavoriteEntity implements FavoriteEntity {
  const factory _FavoriteEntity(
      {required final AdEntity ad,
      required final DateTime addedAt}) = _$FavoriteEntityImpl;

  @override
  AdEntity get ad;
  @override
  DateTime get addedAt;

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteEntityImplCopyWith<_$FavoriteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
