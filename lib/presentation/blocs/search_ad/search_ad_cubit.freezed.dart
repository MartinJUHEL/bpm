// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ad_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchAdState {}

/// @nodoc
abstract class $SearchAdStateCopyWith<$Res> {
  factory $SearchAdStateCopyWith(
          SearchAdState value, $Res Function(SearchAdState) then) =
      _$SearchAdStateCopyWithImpl<$Res, SearchAdState>;
}

/// @nodoc
class _$SearchAdStateCopyWithImpl<$Res, $Val extends SearchAdState>
    implements $SearchAdStateCopyWith<$Res> {
  _$SearchAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchAdNoneImplCopyWith<$Res> {
  factory _$$SearchAdNoneImplCopyWith(
          _$SearchAdNoneImpl value, $Res Function(_$SearchAdNoneImpl) then) =
      __$$SearchAdNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchAdNoneImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdNoneImpl>
    implements _$$SearchAdNoneImplCopyWith<$Res> {
  __$$SearchAdNoneImplCopyWithImpl(
      _$SearchAdNoneImpl _value, $Res Function(_$SearchAdNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchAdNoneImpl implements SearchAdNone {
  const _$SearchAdNoneImpl();

  @override
  String toString() {
    return 'SearchAdState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchAdNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SearchAdNone implements SearchAdState {
  const factory SearchAdNone() = _$SearchAdNoneImpl;
}

/// @nodoc
abstract class _$$SearchAdSearchingImplCopyWith<$Res> {
  factory _$$SearchAdSearchingImplCopyWith(_$SearchAdSearchingImpl value,
          $Res Function(_$SearchAdSearchingImpl) then) =
      __$$SearchAdSearchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchAdSearchingImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdSearchingImpl>
    implements _$$SearchAdSearchingImplCopyWith<$Res> {
  __$$SearchAdSearchingImplCopyWithImpl(_$SearchAdSearchingImpl _value,
      $Res Function(_$SearchAdSearchingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchAdSearchingImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAdSearchingImpl implements SearchAdSearching {
  const _$SearchAdSearchingImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchAdState.searching(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAdSearchingImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAdSearchingImplCopyWith<_$SearchAdSearchingImpl> get copyWith =>
      __$$SearchAdSearchingImplCopyWithImpl<_$SearchAdSearchingImpl>(
          this, _$identity);
}

abstract class SearchAdSearching implements SearchAdState {
  const factory SearchAdSearching({required final String query}) =
      _$SearchAdSearchingImpl;

  String get query;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAdSearchingImplCopyWith<_$SearchAdSearchingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
