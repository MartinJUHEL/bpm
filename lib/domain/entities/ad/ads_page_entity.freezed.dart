// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_page_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsPageEntity {
  List<AdEntity> get ads => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Create a copy of AdsPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdsPageEntityCopyWith<AdsPageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsPageEntityCopyWith<$Res> {
  factory $AdsPageEntityCopyWith(
          AdsPageEntity value, $Res Function(AdsPageEntity) then) =
      _$AdsPageEntityCopyWithImpl<$Res, AdsPageEntity>;
  @useResult
  $Res call({List<AdEntity> ads, int total});
}

/// @nodoc
class _$AdsPageEntityCopyWithImpl<$Res, $Val extends AdsPageEntity>
    implements $AdsPageEntityCopyWith<$Res> {
  _$AdsPageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdsPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      ads: null == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdEntity>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsPageEntityImplCopyWith<$Res>
    implements $AdsPageEntityCopyWith<$Res> {
  factory _$$AdsPageEntityImplCopyWith(
          _$AdsPageEntityImpl value, $Res Function(_$AdsPageEntityImpl) then) =
      __$$AdsPageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AdEntity> ads, int total});
}

/// @nodoc
class __$$AdsPageEntityImplCopyWithImpl<$Res>
    extends _$AdsPageEntityCopyWithImpl<$Res, _$AdsPageEntityImpl>
    implements _$$AdsPageEntityImplCopyWith<$Res> {
  __$$AdsPageEntityImplCopyWithImpl(
      _$AdsPageEntityImpl _value, $Res Function(_$AdsPageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdsPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
    Object? total = null,
  }) {
    return _then(_$AdsPageEntityImpl(
      ads: null == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdEntity>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdsPageEntityImpl extends _AdsPageEntity {
  const _$AdsPageEntityImpl(
      {required final List<AdEntity> ads, required this.total})
      : _ads = ads,
        super._();

  final List<AdEntity> _ads;
  @override
  List<AdEntity> get ads {
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'AdsPageEntity(ads: $ads, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsPageEntityImpl &&
            const DeepCollectionEquality().equals(other._ads, _ads) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ads), total);

  /// Create a copy of AdsPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsPageEntityImplCopyWith<_$AdsPageEntityImpl> get copyWith =>
      __$$AdsPageEntityImplCopyWithImpl<_$AdsPageEntityImpl>(this, _$identity);
}

abstract class _AdsPageEntity extends AdsPageEntity {
  const factory _AdsPageEntity(
      {required final List<AdEntity> ads,
      required final int total}) = _$AdsPageEntityImpl;
  const _AdsPageEntity._() : super._();

  @override
  List<AdEntity> get ads;
  @override
  int get total;

  /// Create a copy of AdsPageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdsPageEntityImplCopyWith<_$AdsPageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
