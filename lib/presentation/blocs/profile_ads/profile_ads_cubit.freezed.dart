// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_ads_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileAdsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(List<AdEntity> ads) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(List<AdEntity> ads)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(List<AdEntity> ads)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileAdsInitial value) initial,
    required TResult Function(ProfileAdsError value) error,
    required TResult Function(ProfileAdsEmpty value) empty,
    required TResult Function(ProfileAdsData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileAdsInitial value)? initial,
    TResult? Function(ProfileAdsError value)? error,
    TResult? Function(ProfileAdsEmpty value)? empty,
    TResult? Function(ProfileAdsData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileAdsInitial value)? initial,
    TResult Function(ProfileAdsError value)? error,
    TResult Function(ProfileAdsEmpty value)? empty,
    TResult Function(ProfileAdsData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAdsStateCopyWith<$Res> {
  factory $ProfileAdsStateCopyWith(
          ProfileAdsState value, $Res Function(ProfileAdsState) then) =
      _$ProfileAdsStateCopyWithImpl<$Res, ProfileAdsState>;
}

/// @nodoc
class _$ProfileAdsStateCopyWithImpl<$Res, $Val extends ProfileAdsState>
    implements $ProfileAdsStateCopyWith<$Res> {
  _$ProfileAdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileAdsInitialImplCopyWith<$Res> {
  factory _$$ProfileAdsInitialImplCopyWith(_$ProfileAdsInitialImpl value,
          $Res Function(_$ProfileAdsInitialImpl) then) =
      __$$ProfileAdsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileAdsInitialImplCopyWithImpl<$Res>
    extends _$ProfileAdsStateCopyWithImpl<$Res, _$ProfileAdsInitialImpl>
    implements _$$ProfileAdsInitialImplCopyWith<$Res> {
  __$$ProfileAdsInitialImplCopyWithImpl(_$ProfileAdsInitialImpl _value,
      $Res Function(_$ProfileAdsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileAdsInitialImpl implements ProfileAdsInitial {
  const _$ProfileAdsInitialImpl();

  @override
  String toString() {
    return 'ProfileAdsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileAdsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(List<AdEntity> ads) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(List<AdEntity> ads)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(List<AdEntity> ads)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileAdsInitial value) initial,
    required TResult Function(ProfileAdsError value) error,
    required TResult Function(ProfileAdsEmpty value) empty,
    required TResult Function(ProfileAdsData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileAdsInitial value)? initial,
    TResult? Function(ProfileAdsError value)? error,
    TResult? Function(ProfileAdsEmpty value)? empty,
    TResult? Function(ProfileAdsData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileAdsInitial value)? initial,
    TResult Function(ProfileAdsError value)? error,
    TResult Function(ProfileAdsEmpty value)? empty,
    TResult Function(ProfileAdsData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileAdsInitial implements ProfileAdsState {
  const factory ProfileAdsInitial() = _$ProfileAdsInitialImpl;
}

/// @nodoc
abstract class _$$ProfileAdsErrorImplCopyWith<$Res> {
  factory _$$ProfileAdsErrorImplCopyWith(_$ProfileAdsErrorImpl value,
          $Res Function(_$ProfileAdsErrorImpl) then) =
      __$$ProfileAdsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileAdsErrorImplCopyWithImpl<$Res>
    extends _$ProfileAdsStateCopyWithImpl<$Res, _$ProfileAdsErrorImpl>
    implements _$$ProfileAdsErrorImplCopyWith<$Res> {
  __$$ProfileAdsErrorImplCopyWithImpl(
      _$ProfileAdsErrorImpl _value, $Res Function(_$ProfileAdsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileAdsErrorImpl implements ProfileAdsError {
  const _$ProfileAdsErrorImpl();

  @override
  String toString() {
    return 'ProfileAdsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileAdsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(List<AdEntity> ads) data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(List<AdEntity> ads)? data,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(List<AdEntity> ads)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileAdsInitial value) initial,
    required TResult Function(ProfileAdsError value) error,
    required TResult Function(ProfileAdsEmpty value) empty,
    required TResult Function(ProfileAdsData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileAdsInitial value)? initial,
    TResult? Function(ProfileAdsError value)? error,
    TResult? Function(ProfileAdsEmpty value)? empty,
    TResult? Function(ProfileAdsData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileAdsInitial value)? initial,
    TResult Function(ProfileAdsError value)? error,
    TResult Function(ProfileAdsEmpty value)? empty,
    TResult Function(ProfileAdsData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileAdsError implements ProfileAdsState {
  const factory ProfileAdsError() = _$ProfileAdsErrorImpl;
}

/// @nodoc
abstract class _$$ProfileAdsEmptyImplCopyWith<$Res> {
  factory _$$ProfileAdsEmptyImplCopyWith(_$ProfileAdsEmptyImpl value,
          $Res Function(_$ProfileAdsEmptyImpl) then) =
      __$$ProfileAdsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileAdsEmptyImplCopyWithImpl<$Res>
    extends _$ProfileAdsStateCopyWithImpl<$Res, _$ProfileAdsEmptyImpl>
    implements _$$ProfileAdsEmptyImplCopyWith<$Res> {
  __$$ProfileAdsEmptyImplCopyWithImpl(
      _$ProfileAdsEmptyImpl _value, $Res Function(_$ProfileAdsEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileAdsEmptyImpl implements ProfileAdsEmpty {
  const _$ProfileAdsEmptyImpl();

  @override
  String toString() {
    return 'ProfileAdsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileAdsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(List<AdEntity> ads) data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(List<AdEntity> ads)? data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(List<AdEntity> ads)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileAdsInitial value) initial,
    required TResult Function(ProfileAdsError value) error,
    required TResult Function(ProfileAdsEmpty value) empty,
    required TResult Function(ProfileAdsData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileAdsInitial value)? initial,
    TResult? Function(ProfileAdsError value)? error,
    TResult? Function(ProfileAdsEmpty value)? empty,
    TResult? Function(ProfileAdsData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileAdsInitial value)? initial,
    TResult Function(ProfileAdsError value)? error,
    TResult Function(ProfileAdsEmpty value)? empty,
    TResult Function(ProfileAdsData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProfileAdsEmpty implements ProfileAdsState {
  const factory ProfileAdsEmpty() = _$ProfileAdsEmptyImpl;
}

/// @nodoc
abstract class _$$ProfileAdsDataImplCopyWith<$Res> {
  factory _$$ProfileAdsDataImplCopyWith(_$ProfileAdsDataImpl value,
          $Res Function(_$ProfileAdsDataImpl) then) =
      __$$ProfileAdsDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AdEntity> ads});
}

/// @nodoc
class __$$ProfileAdsDataImplCopyWithImpl<$Res>
    extends _$ProfileAdsStateCopyWithImpl<$Res, _$ProfileAdsDataImpl>
    implements _$$ProfileAdsDataImplCopyWith<$Res> {
  __$$ProfileAdsDataImplCopyWithImpl(
      _$ProfileAdsDataImpl _value, $Res Function(_$ProfileAdsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
  }) {
    return _then(_$ProfileAdsDataImpl(
      null == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdEntity>,
    ));
  }
}

/// @nodoc

class _$ProfileAdsDataImpl implements ProfileAdsData {
  const _$ProfileAdsDataImpl(final List<AdEntity> ads) : _ads = ads;

  final List<AdEntity> _ads;
  @override
  List<AdEntity> get ads {
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  @override
  String toString() {
    return 'ProfileAdsState.data(ads: $ads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAdsDataImpl &&
            const DeepCollectionEquality().equals(other._ads, _ads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ads));

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAdsDataImplCopyWith<_$ProfileAdsDataImpl> get copyWith =>
      __$$ProfileAdsDataImplCopyWithImpl<_$ProfileAdsDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() error,
    required TResult Function() empty,
    required TResult Function(List<AdEntity> ads) data,
  }) {
    return data(ads);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? error,
    TResult? Function()? empty,
    TResult? Function(List<AdEntity> ads)? data,
  }) {
    return data?.call(ads);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? error,
    TResult Function()? empty,
    TResult Function(List<AdEntity> ads)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(ads);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileAdsInitial value) initial,
    required TResult Function(ProfileAdsError value) error,
    required TResult Function(ProfileAdsEmpty value) empty,
    required TResult Function(ProfileAdsData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileAdsInitial value)? initial,
    TResult? Function(ProfileAdsError value)? error,
    TResult? Function(ProfileAdsEmpty value)? empty,
    TResult? Function(ProfileAdsData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileAdsInitial value)? initial,
    TResult Function(ProfileAdsError value)? error,
    TResult Function(ProfileAdsEmpty value)? empty,
    TResult Function(ProfileAdsData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ProfileAdsData implements ProfileAdsState {
  const factory ProfileAdsData(final List<AdEntity> ads) = _$ProfileAdsDataImpl;

  List<AdEntity> get ads;

  /// Create a copy of ProfileAdsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileAdsDataImplCopyWith<_$ProfileAdsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
