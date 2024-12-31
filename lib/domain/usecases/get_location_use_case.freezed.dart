// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_location_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationResult {}

/// @nodoc
abstract class $LocationResultCopyWith<$Res> {
  factory $LocationResultCopyWith(
          LocationResult value, $Res Function(LocationResult) then) =
      _$LocationResultCopyWithImpl<$Res, LocationResult>;
}

/// @nodoc
class _$LocationResultCopyWithImpl<$Res, $Val extends LocationResult>
    implements $LocationResultCopyWith<$Res> {
  _$LocationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LocationDisabledImplCopyWith<$Res> {
  factory _$$LocationDisabledImplCopyWith(_$LocationDisabledImpl value,
          $Res Function(_$LocationDisabledImpl) then) =
      __$$LocationDisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationDisabledImplCopyWithImpl<$Res>
    extends _$LocationResultCopyWithImpl<$Res, _$LocationDisabledImpl>
    implements _$$LocationDisabledImplCopyWith<$Res> {
  __$$LocationDisabledImplCopyWithImpl(_$LocationDisabledImpl _value,
      $Res Function(_$LocationDisabledImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationDisabledImpl implements LocationDisabled {
  const _$LocationDisabledImpl();

  @override
  String toString() {
    return 'LocationResult.disabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationDisabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LocationDisabled implements LocationResult {
  const factory LocationDisabled() = _$LocationDisabledImpl;
}

/// @nodoc
abstract class _$$LocationPermissionDeniedImplCopyWith<$Res> {
  factory _$$LocationPermissionDeniedImplCopyWith(
          _$LocationPermissionDeniedImpl value,
          $Res Function(_$LocationPermissionDeniedImpl) then) =
      __$$LocationPermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionDeniedImplCopyWithImpl<$Res>
    extends _$LocationResultCopyWithImpl<$Res, _$LocationPermissionDeniedImpl>
    implements _$$LocationPermissionDeniedImplCopyWith<$Res> {
  __$$LocationPermissionDeniedImplCopyWithImpl(
      _$LocationPermissionDeniedImpl _value,
      $Res Function(_$LocationPermissionDeniedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationPermissionDeniedImpl implements LocationPermissionDenied {
  const _$LocationPermissionDeniedImpl();

  @override
  String toString() {
    return 'LocationResult.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LocationPermissionDenied implements LocationResult {
  const factory LocationPermissionDenied() = _$LocationPermissionDeniedImpl;
}

/// @nodoc
abstract class _$$LocationPermissionDeniedForeverImplCopyWith<$Res> {
  factory _$$LocationPermissionDeniedForeverImplCopyWith(
          _$LocationPermissionDeniedForeverImpl value,
          $Res Function(_$LocationPermissionDeniedForeverImpl) then) =
      __$$LocationPermissionDeniedForeverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPermissionDeniedForeverImplCopyWithImpl<$Res>
    extends _$LocationResultCopyWithImpl<$Res,
        _$LocationPermissionDeniedForeverImpl>
    implements _$$LocationPermissionDeniedForeverImplCopyWith<$Res> {
  __$$LocationPermissionDeniedForeverImplCopyWithImpl(
      _$LocationPermissionDeniedForeverImpl _value,
      $Res Function(_$LocationPermissionDeniedForeverImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationPermissionDeniedForeverImpl
    implements LocationPermissionDeniedForever {
  const _$LocationPermissionDeniedForeverImpl();

  @override
  String toString() {
    return 'LocationResult.permissionDeniedForever()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPermissionDeniedForeverImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LocationPermissionDeniedForever implements LocationResult {
  const factory LocationPermissionDeniedForever() =
      _$LocationPermissionDeniedForeverImpl;
}

/// @nodoc
abstract class _$$LocationSuccessImplCopyWith<$Res> {
  factory _$$LocationSuccessImplCopyWith(_$LocationSuccessImpl value,
          $Res Function(_$LocationSuccessImpl) then) =
      __$$LocationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLong latLong});

  $LatLongCopyWith<$Res> get latLong;
}

/// @nodoc
class __$$LocationSuccessImplCopyWithImpl<$Res>
    extends _$LocationResultCopyWithImpl<$Res, _$LocationSuccessImpl>
    implements _$$LocationSuccessImplCopyWith<$Res> {
  __$$LocationSuccessImplCopyWithImpl(
      _$LocationSuccessImpl _value, $Res Function(_$LocationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLong = null,
  }) {
    return _then(_$LocationSuccessImpl(
      latLong: null == latLong
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as LatLong,
    ));
  }

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLongCopyWith<$Res> get latLong {
    return $LatLongCopyWith<$Res>(_value.latLong, (value) {
      return _then(_value.copyWith(latLong: value));
    });
  }
}

/// @nodoc

class _$LocationSuccessImpl implements LocationSuccess {
  const _$LocationSuccessImpl({required this.latLong});

  @override
  final LatLong latLong;

  @override
  String toString() {
    return 'LocationResult.success(latLong: $latLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSuccessImpl &&
            (identical(other.latLong, latLong) || other.latLong == latLong));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLong);

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSuccessImplCopyWith<_$LocationSuccessImpl> get copyWith =>
      __$$LocationSuccessImplCopyWithImpl<_$LocationSuccessImpl>(
          this, _$identity);
}

abstract class LocationSuccess implements LocationResult {
  const factory LocationSuccess({required final LatLong latLong}) =
      _$LocationSuccessImpl;

  LatLong get latLong;

  /// Create a copy of LocationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationSuccessImplCopyWith<_$LocationSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
