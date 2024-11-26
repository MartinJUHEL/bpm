// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityEntity {
  String get postcode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get cityCode => throw _privateConstructorUsedError;
  LatLong get latLong => throw _privateConstructorUsedError;

  /// Create a copy of CityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityEntityCopyWith<CityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEntityCopyWith<$Res> {
  factory $CityEntityCopyWith(
          CityEntity value, $Res Function(CityEntity) then) =
      _$CityEntityCopyWithImpl<$Res, CityEntity>;
  @useResult
  $Res call({String postcode, String city, String cityCode, LatLong latLong});

  $LatLongCopyWith<$Res> get latLong;
}

/// @nodoc
class _$CityEntityCopyWithImpl<$Res, $Val extends CityEntity>
    implements $CityEntityCopyWith<$Res> {
  _$CityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postcode = null,
    Object? city = null,
    Object? cityCode = null,
    Object? latLong = null,
  }) {
    return _then(_value.copyWith(
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      latLong: null == latLong
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as LatLong,
    ) as $Val);
  }

  /// Create a copy of CityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLongCopyWith<$Res> get latLong {
    return $LatLongCopyWith<$Res>(_value.latLong, (value) {
      return _then(_value.copyWith(latLong: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CityEntityImplCopyWith<$Res>
    implements $CityEntityCopyWith<$Res> {
  factory _$$CityEntityImplCopyWith(
          _$CityEntityImpl value, $Res Function(_$CityEntityImpl) then) =
      __$$CityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postcode, String city, String cityCode, LatLong latLong});

  @override
  $LatLongCopyWith<$Res> get latLong;
}

/// @nodoc
class __$$CityEntityImplCopyWithImpl<$Res>
    extends _$CityEntityCopyWithImpl<$Res, _$CityEntityImpl>
    implements _$$CityEntityImplCopyWith<$Res> {
  __$$CityEntityImplCopyWithImpl(
      _$CityEntityImpl _value, $Res Function(_$CityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postcode = null,
    Object? city = null,
    Object? cityCode = null,
    Object? latLong = null,
  }) {
    return _then(_$CityEntityImpl(
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      latLong: null == latLong
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as LatLong,
    ));
  }
}

/// @nodoc

class _$CityEntityImpl extends _CityEntity {
  const _$CityEntityImpl(
      {required this.postcode,
      required this.city,
      required this.cityCode,
      required this.latLong})
      : super._();

  @override
  final String postcode;
  @override
  final String city;
  @override
  final String cityCode;
  @override
  final LatLong latLong;

  @override
  String toString() {
    return 'CityEntity(postcode: $postcode, city: $city, cityCode: $cityCode, latLong: $latLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityEntityImpl &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.latLong, latLong) || other.latLong == latLong));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, postcode, city, cityCode, latLong);

  /// Create a copy of CityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityEntityImplCopyWith<_$CityEntityImpl> get copyWith =>
      __$$CityEntityImplCopyWithImpl<_$CityEntityImpl>(this, _$identity);
}

abstract class _CityEntity extends CityEntity {
  const factory _CityEntity(
      {required final String postcode,
      required final String city,
      required final String cityCode,
      required final LatLong latLong}) = _$CityEntityImpl;
  const _CityEntity._() : super._();

  @override
  String get postcode;
  @override
  String get city;
  @override
  String get cityCode;
  @override
  LatLong get latLong;

  /// Create a copy of CityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityEntityImplCopyWith<_$CityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
