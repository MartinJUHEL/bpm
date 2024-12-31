// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_ads_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListAdsState {
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
    required TResult Function(ListAdsInitial value) initial,
    required TResult Function(ListAdsError value) error,
    required TResult Function(ListAdsEmpty value) empty,
    required TResult Function(ListAdsData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListAdsInitial value)? initial,
    TResult? Function(ListAdsError value)? error,
    TResult? Function(ListAdsEmpty value)? empty,
    TResult? Function(ListAdsData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListAdsInitial value)? initial,
    TResult Function(ListAdsError value)? error,
    TResult Function(ListAdsEmpty value)? empty,
    TResult Function(ListAdsData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAdsStateCopyWith<$Res> {
  factory $ListAdsStateCopyWith(
          ListAdsState value, $Res Function(ListAdsState) then) =
      _$ListAdsStateCopyWithImpl<$Res, ListAdsState>;
}

/// @nodoc
class _$ListAdsStateCopyWithImpl<$Res, $Val extends ListAdsState>
    implements $ListAdsStateCopyWith<$Res> {
  _$ListAdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ListAdsInitialImplCopyWith<$Res> {
  factory _$$ListAdsInitialImplCopyWith(_$ListAdsInitialImpl value,
          $Res Function(_$ListAdsInitialImpl) then) =
      __$$ListAdsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListAdsInitialImplCopyWithImpl<$Res>
    extends _$ListAdsStateCopyWithImpl<$Res, _$ListAdsInitialImpl>
    implements _$$ListAdsInitialImplCopyWith<$Res> {
  __$$ListAdsInitialImplCopyWithImpl(
      _$ListAdsInitialImpl _value, $Res Function(_$ListAdsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListAdsInitialImpl implements ListAdsInitial {
  const _$ListAdsInitialImpl();

  @override
  String toString() {
    return 'ListAdsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListAdsInitialImpl);
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
    required TResult Function(ListAdsInitial value) initial,
    required TResult Function(ListAdsError value) error,
    required TResult Function(ListAdsEmpty value) empty,
    required TResult Function(ListAdsData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListAdsInitial value)? initial,
    TResult? Function(ListAdsError value)? error,
    TResult? Function(ListAdsEmpty value)? empty,
    TResult? Function(ListAdsData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListAdsInitial value)? initial,
    TResult Function(ListAdsError value)? error,
    TResult Function(ListAdsEmpty value)? empty,
    TResult Function(ListAdsData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ListAdsInitial implements ListAdsState {
  const factory ListAdsInitial() = _$ListAdsInitialImpl;
}

/// @nodoc
abstract class _$$ListAdsErrorImplCopyWith<$Res> {
  factory _$$ListAdsErrorImplCopyWith(
          _$ListAdsErrorImpl value, $Res Function(_$ListAdsErrorImpl) then) =
      __$$ListAdsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListAdsErrorImplCopyWithImpl<$Res>
    extends _$ListAdsStateCopyWithImpl<$Res, _$ListAdsErrorImpl>
    implements _$$ListAdsErrorImplCopyWith<$Res> {
  __$$ListAdsErrorImplCopyWithImpl(
      _$ListAdsErrorImpl _value, $Res Function(_$ListAdsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListAdsErrorImpl implements ListAdsError {
  const _$ListAdsErrorImpl();

  @override
  String toString() {
    return 'ListAdsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListAdsErrorImpl);
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
    required TResult Function(ListAdsInitial value) initial,
    required TResult Function(ListAdsError value) error,
    required TResult Function(ListAdsEmpty value) empty,
    required TResult Function(ListAdsData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListAdsInitial value)? initial,
    TResult? Function(ListAdsError value)? error,
    TResult? Function(ListAdsEmpty value)? empty,
    TResult? Function(ListAdsData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListAdsInitial value)? initial,
    TResult Function(ListAdsError value)? error,
    TResult Function(ListAdsEmpty value)? empty,
    TResult Function(ListAdsData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListAdsError implements ListAdsState {
  const factory ListAdsError() = _$ListAdsErrorImpl;
}

/// @nodoc
abstract class _$$ListAdsEmptyImplCopyWith<$Res> {
  factory _$$ListAdsEmptyImplCopyWith(
          _$ListAdsEmptyImpl value, $Res Function(_$ListAdsEmptyImpl) then) =
      __$$ListAdsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListAdsEmptyImplCopyWithImpl<$Res>
    extends _$ListAdsStateCopyWithImpl<$Res, _$ListAdsEmptyImpl>
    implements _$$ListAdsEmptyImplCopyWith<$Res> {
  __$$ListAdsEmptyImplCopyWithImpl(
      _$ListAdsEmptyImpl _value, $Res Function(_$ListAdsEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListAdsEmptyImpl implements ListAdsEmpty {
  const _$ListAdsEmptyImpl();

  @override
  String toString() {
    return 'ListAdsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListAdsEmptyImpl);
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
    required TResult Function(ListAdsInitial value) initial,
    required TResult Function(ListAdsError value) error,
    required TResult Function(ListAdsEmpty value) empty,
    required TResult Function(ListAdsData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListAdsInitial value)? initial,
    TResult? Function(ListAdsError value)? error,
    TResult? Function(ListAdsEmpty value)? empty,
    TResult? Function(ListAdsData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListAdsInitial value)? initial,
    TResult Function(ListAdsError value)? error,
    TResult Function(ListAdsEmpty value)? empty,
    TResult Function(ListAdsData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ListAdsEmpty implements ListAdsState {
  const factory ListAdsEmpty() = _$ListAdsEmptyImpl;
}

/// @nodoc
abstract class _$$ListAdsDataImplCopyWith<$Res> {
  factory _$$ListAdsDataImplCopyWith(
          _$ListAdsDataImpl value, $Res Function(_$ListAdsDataImpl) then) =
      __$$ListAdsDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AdEntity> ads});
}

/// @nodoc
class __$$ListAdsDataImplCopyWithImpl<$Res>
    extends _$ListAdsStateCopyWithImpl<$Res, _$ListAdsDataImpl>
    implements _$$ListAdsDataImplCopyWith<$Res> {
  __$$ListAdsDataImplCopyWithImpl(
      _$ListAdsDataImpl _value, $Res Function(_$ListAdsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
  }) {
    return _then(_$ListAdsDataImpl(
      null == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<AdEntity>,
    ));
  }
}

/// @nodoc

class _$ListAdsDataImpl implements ListAdsData {
  const _$ListAdsDataImpl(final List<AdEntity> ads) : _ads = ads;

  final List<AdEntity> _ads;
  @override
  List<AdEntity> get ads {
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  @override
  String toString() {
    return 'ListAdsState.data(ads: $ads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListAdsDataImpl &&
            const DeepCollectionEquality().equals(other._ads, _ads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ads));

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListAdsDataImplCopyWith<_$ListAdsDataImpl> get copyWith =>
      __$$ListAdsDataImplCopyWithImpl<_$ListAdsDataImpl>(this, _$identity);

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
    required TResult Function(ListAdsInitial value) initial,
    required TResult Function(ListAdsError value) error,
    required TResult Function(ListAdsEmpty value) empty,
    required TResult Function(ListAdsData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListAdsInitial value)? initial,
    TResult? Function(ListAdsError value)? error,
    TResult? Function(ListAdsEmpty value)? empty,
    TResult? Function(ListAdsData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListAdsInitial value)? initial,
    TResult Function(ListAdsError value)? error,
    TResult Function(ListAdsEmpty value)? empty,
    TResult Function(ListAdsData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ListAdsData implements ListAdsState {
  const factory ListAdsData(final List<AdEntity> ads) = _$ListAdsDataImpl;

  List<AdEntity> get ads;

  /// Create a copy of ListAdsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListAdsDataImplCopyWith<_$ListAdsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
