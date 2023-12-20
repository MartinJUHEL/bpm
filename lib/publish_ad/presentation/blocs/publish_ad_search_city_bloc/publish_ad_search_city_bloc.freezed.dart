// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publish_ad_search_city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PublishAdSearchCityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sessionToken) started,
    required TResult Function(String query) citySearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sessionToken)? started,
    TResult? Function(String query)? citySearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sessionToken)? started,
    TResult Function(String query)? citySearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CitySearched value) citySearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CitySearched value)? citySearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CitySearched value)? citySearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishAdSearchCityEventCopyWith<$Res> {
  factory $PublishAdSearchCityEventCopyWith(PublishAdSearchCityEvent value,
          $Res Function(PublishAdSearchCityEvent) then) =
      _$PublishAdSearchCityEventCopyWithImpl<$Res, PublishAdSearchCityEvent>;
}

/// @nodoc
class _$PublishAdSearchCityEventCopyWithImpl<$Res,
        $Val extends PublishAdSearchCityEvent>
    implements $PublishAdSearchCityEventCopyWith<$Res> {
  _$PublishAdSearchCityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionToken});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PublishAdSearchCityEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = null,
  }) {
    return _then(_$StartedImpl(
      null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.sessionToken);

  @override
  final String sessionToken;

  @override
  String toString() {
    return 'PublishAdSearchCityEvent.started(sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sessionToken) started,
    required TResult Function(String query) citySearched,
  }) {
    return started(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sessionToken)? started,
    TResult? Function(String query)? citySearched,
  }) {
    return started?.call(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sessionToken)? started,
    TResult Function(String query)? citySearched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(sessionToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CitySearched value) citySearched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CitySearched value)? citySearched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CitySearched value)? citySearched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PublishAdSearchCityEvent {
  const factory _Started(final String sessionToken) = _$StartedImpl;

  String get sessionToken;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CitySearchedImplCopyWith<$Res> {
  factory _$$CitySearchedImplCopyWith(
          _$CitySearchedImpl value, $Res Function(_$CitySearchedImpl) then) =
      __$$CitySearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CitySearchedImplCopyWithImpl<$Res>
    extends _$PublishAdSearchCityEventCopyWithImpl<$Res, _$CitySearchedImpl>
    implements _$$CitySearchedImplCopyWith<$Res> {
  __$$CitySearchedImplCopyWithImpl(
      _$CitySearchedImpl _value, $Res Function(_$CitySearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$CitySearchedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CitySearchedImpl implements _CitySearched {
  const _$CitySearchedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'PublishAdSearchCityEvent.citySearched(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitySearchedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitySearchedImplCopyWith<_$CitySearchedImpl> get copyWith =>
      __$$CitySearchedImplCopyWithImpl<_$CitySearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sessionToken) started,
    required TResult Function(String query) citySearched,
  }) {
    return citySearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sessionToken)? started,
    TResult? Function(String query)? citySearched,
  }) {
    return citySearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sessionToken)? started,
    TResult Function(String query)? citySearched,
    required TResult orElse(),
  }) {
    if (citySearched != null) {
      return citySearched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CitySearched value) citySearched,
  }) {
    return citySearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CitySearched value)? citySearched,
  }) {
    return citySearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CitySearched value)? citySearched,
    required TResult orElse(),
  }) {
    if (citySearched != null) {
      return citySearched(this);
    }
    return orElse();
  }
}

abstract class _CitySearched implements PublishAdSearchCityEvent {
  const factory _CitySearched(final String query) = _$CitySearchedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$CitySearchedImplCopyWith<_$CitySearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PublishAdSearchCityState {
  PublishAdSearchCityStatus get status => throw _privateConstructorUsedError;
  String get sessionToken => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PublishAdSearchCityStateCopyWith<PublishAdSearchCityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishAdSearchCityStateCopyWith<$Res> {
  factory $PublishAdSearchCityStateCopyWith(PublishAdSearchCityState value,
          $Res Function(PublishAdSearchCityState) then) =
      _$PublishAdSearchCityStateCopyWithImpl<$Res, PublishAdSearchCityState>;
  @useResult
  $Res call(
      {PublishAdSearchCityStatus status,
      String sessionToken,
      String query,
      List<String> suggestions});
}

/// @nodoc
class _$PublishAdSearchCityStateCopyWithImpl<$Res,
        $Val extends PublishAdSearchCityState>
    implements $PublishAdSearchCityStateCopyWith<$Res> {
  _$PublishAdSearchCityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sessionToken = null,
    Object? query = null,
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PublishAdSearchCityStatus,
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublishAdSearchCityStateImplCopyWith<$Res>
    implements $PublishAdSearchCityStateCopyWith<$Res> {
  factory _$$PublishAdSearchCityStateImplCopyWith(
          _$PublishAdSearchCityStateImpl value,
          $Res Function(_$PublishAdSearchCityStateImpl) then) =
      __$$PublishAdSearchCityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PublishAdSearchCityStatus status,
      String sessionToken,
      String query,
      List<String> suggestions});
}

/// @nodoc
class __$$PublishAdSearchCityStateImplCopyWithImpl<$Res>
    extends _$PublishAdSearchCityStateCopyWithImpl<$Res,
        _$PublishAdSearchCityStateImpl>
    implements _$$PublishAdSearchCityStateImplCopyWith<$Res> {
  __$$PublishAdSearchCityStateImplCopyWithImpl(
      _$PublishAdSearchCityStateImpl _value,
      $Res Function(_$PublishAdSearchCityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sessionToken = null,
    Object? query = null,
    Object? suggestions = null,
  }) {
    return _then(_$PublishAdSearchCityStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PublishAdSearchCityStatus,
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PublishAdSearchCityStateImpl implements _PublishAdSearchCityState {
  const _$PublishAdSearchCityStateImpl(
      {this.status = PublishAdSearchCityStatus.initial,
      this.sessionToken = '',
      this.query = '',
      final List<String> suggestions = const []})
      : _suggestions = suggestions;

  @override
  @JsonKey()
  final PublishAdSearchCityStatus status;
  @override
  @JsonKey()
  final String sessionToken;
  @override
  @JsonKey()
  final String query;
  final List<String> _suggestions;
  @override
  @JsonKey()
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'PublishAdSearchCityState(status: $status, sessionToken: $sessionToken, query: $query, suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublishAdSearchCityStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, sessionToken, query,
      const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublishAdSearchCityStateImplCopyWith<_$PublishAdSearchCityStateImpl>
      get copyWith => __$$PublishAdSearchCityStateImplCopyWithImpl<
          _$PublishAdSearchCityStateImpl>(this, _$identity);
}

abstract class _PublishAdSearchCityState implements PublishAdSearchCityState {
  const factory _PublishAdSearchCityState(
      {final PublishAdSearchCityStatus status,
      final String sessionToken,
      final String query,
      final List<String> suggestions}) = _$PublishAdSearchCityStateImpl;

  @override
  PublishAdSearchCityStatus get status;
  @override
  String get sessionToken;
  @override
  String get query;
  @override
  List<String> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$PublishAdSearchCityStateImplCopyWith<_$PublishAdSearchCityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
