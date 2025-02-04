// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterEntity {
  CityEntity? get city => throw _privateConstructorUsedError;

  /// Radius in KM.
  int? get locationRadius => throw _privateConstructorUsedError;

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterEntityCopyWith<FilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEntityCopyWith<$Res> {
  factory $FilterEntityCopyWith(
          FilterEntity value, $Res Function(FilterEntity) then) =
      _$FilterEntityCopyWithImpl<$Res, FilterEntity>;
  @useResult
  $Res call({CityEntity? city, int? locationRadius});

  $CityEntityCopyWith<$Res>? get city;
}

/// @nodoc
class _$FilterEntityCopyWithImpl<$Res, $Val extends FilterEntity>
    implements $FilterEntityCopyWith<$Res> {
  _$FilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? locationRadius = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
      locationRadius: freezed == locationRadius
          ? _value.locationRadius
          : locationRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityEntityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityEntityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterEntityImplCopyWith<$Res>
    implements $FilterEntityCopyWith<$Res> {
  factory _$$FilterEntityImplCopyWith(
          _$FilterEntityImpl value, $Res Function(_$FilterEntityImpl) then) =
      __$$FilterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CityEntity? city, int? locationRadius});

  @override
  $CityEntityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$FilterEntityImplCopyWithImpl<$Res>
    extends _$FilterEntityCopyWithImpl<$Res, _$FilterEntityImpl>
    implements _$$FilterEntityImplCopyWith<$Res> {
  __$$FilterEntityImplCopyWithImpl(
      _$FilterEntityImpl _value, $Res Function(_$FilterEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? locationRadius = freezed,
  }) {
    return _then(_$FilterEntityImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
      locationRadius: freezed == locationRadius
          ? _value.locationRadius
          : locationRadius // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FilterEntityImpl extends _FilterEntity {
  const _$FilterEntityImpl({required this.city, this.locationRadius})
      : super._();

  @override
  final CityEntity? city;

  /// Radius in KM.
  @override
  final int? locationRadius;

  @override
  String toString() {
    return 'FilterEntity(city: $city, locationRadius: $locationRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEntityImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.locationRadius, locationRadius) ||
                other.locationRadius == locationRadius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, locationRadius);

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEntityImplCopyWith<_$FilterEntityImpl> get copyWith =>
      __$$FilterEntityImplCopyWithImpl<_$FilterEntityImpl>(this, _$identity);
}

abstract class _FilterEntity extends FilterEntity {
  const factory _FilterEntity(
      {required final CityEntity? city,
      final int? locationRadius}) = _$FilterEntityImpl;
  const _FilterEntity._() : super._();

  @override
  CityEntity? get city;

  /// Radius in KM.
  @override
  int? get locationRadius;

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterEntityImplCopyWith<_$FilterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
