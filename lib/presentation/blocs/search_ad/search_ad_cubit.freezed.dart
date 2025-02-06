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
abstract class _$$SearchAdSuggestionEmptyImplCopyWith<$Res> {
  factory _$$SearchAdSuggestionEmptyImplCopyWith(
          _$SearchAdSuggestionEmptyImpl value,
          $Res Function(_$SearchAdSuggestionEmptyImpl) then) =
      __$$SearchAdSuggestionEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchAdSuggestionEmptyImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdSuggestionEmptyImpl>
    implements _$$SearchAdSuggestionEmptyImplCopyWith<$Res> {
  __$$SearchAdSuggestionEmptyImplCopyWithImpl(
      _$SearchAdSuggestionEmptyImpl _value,
      $Res Function(_$SearchAdSuggestionEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchAdSuggestionEmptyImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAdSuggestionEmptyImpl implements SearchAdSuggestionEmpty {
  const _$SearchAdSuggestionEmptyImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchAdState.suggestionEmpty(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAdSuggestionEmptyImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAdSuggestionEmptyImplCopyWith<_$SearchAdSuggestionEmptyImpl>
      get copyWith => __$$SearchAdSuggestionEmptyImplCopyWithImpl<
          _$SearchAdSuggestionEmptyImpl>(this, _$identity);
}

abstract class SearchAdSuggestionEmpty implements SearchAdState {
  const factory SearchAdSuggestionEmpty({required final String query}) =
      _$SearchAdSuggestionEmptyImpl;

  String get query;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAdSuggestionEmptyImplCopyWith<_$SearchAdSuggestionEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAdErrorImplCopyWith<$Res> {
  factory _$$SearchAdErrorImplCopyWith(
          _$SearchAdErrorImpl value, $Res Function(_$SearchAdErrorImpl) then) =
      __$$SearchAdErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchAdErrorImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdErrorImpl>
    implements _$$SearchAdErrorImplCopyWith<$Res> {
  __$$SearchAdErrorImplCopyWithImpl(
      _$SearchAdErrorImpl _value, $Res Function(_$SearchAdErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchAdErrorImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAdErrorImpl implements SearchAdError {
  const _$SearchAdErrorImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchAdState.error(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAdErrorImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAdErrorImplCopyWith<_$SearchAdErrorImpl> get copyWith =>
      __$$SearchAdErrorImplCopyWithImpl<_$SearchAdErrorImpl>(this, _$identity);
}

abstract class SearchAdError implements SearchAdState {
  const factory SearchAdError({required final String query}) =
      _$SearchAdErrorImpl;

  String get query;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAdErrorImplCopyWith<_$SearchAdErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAdSearchingImplCopyWith<$Res> {
  factory _$$SearchAdSearchingImplCopyWith(_$SearchAdSearchingImpl value,
          $Res Function(_$SearchAdSearchingImpl) then) =
      __$$SearchAdSearchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, List<String> suggestions});
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
    Object? suggestions = null,
  }) {
    return _then(_$SearchAdSearchingImpl(
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

class _$SearchAdSearchingImpl implements SearchAdSearching {
  const _$SearchAdSearchingImpl(
      {required this.query, required final List<String> suggestions})
      : _suggestions = suggestions;

  @override
  final String query;
  final List<String> _suggestions;
  @override
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'SearchAdState.searching(query: $query, suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAdSearchingImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_suggestions));

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
  const factory SearchAdSearching(
      {required final String query,
      required final List<String> suggestions}) = _$SearchAdSearchingImpl;

  String get query;
  List<String> get suggestions;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAdSearchingImplCopyWith<_$SearchAdSearchingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAdDisplayResultsImplCopyWith<$Res> {
  factory _$$SearchAdDisplayResultsImplCopyWith(
          _$SearchAdDisplayResultsImpl value,
          $Res Function(_$SearchAdDisplayResultsImpl) then) =
      __$$SearchAdDisplayResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String query,
      List<AdEntity> result,
      FilterEntity filter,
      int page,
      int totalAds,
      bool isNextPageLoading});

  $FilterEntityCopyWith<$Res> get filter;
}

/// @nodoc
class __$$SearchAdDisplayResultsImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdDisplayResultsImpl>
    implements _$$SearchAdDisplayResultsImplCopyWith<$Res> {
  __$$SearchAdDisplayResultsImplCopyWithImpl(
      _$SearchAdDisplayResultsImpl _value,
      $Res Function(_$SearchAdDisplayResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? result = null,
    Object? filter = null,
    Object? page = null,
    Object? totalAds = null,
    Object? isNextPageLoading = null,
  }) {
    return _then(_$SearchAdDisplayResultsImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<AdEntity>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterEntity,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalAds: null == totalAds
          ? _value.totalAds
          : totalAds // ignore: cast_nullable_to_non_nullable
              as int,
      isNextPageLoading: null == isNextPageLoading
          ? _value.isNextPageLoading
          : isNextPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterEntityCopyWith<$Res> get filter {
    return $FilterEntityCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc

class _$SearchAdDisplayResultsImpl implements SearchAdDisplayResults {
  const _$SearchAdDisplayResultsImpl(
      {required this.query,
      required final List<AdEntity> result,
      required this.filter,
      required this.page,
      required this.totalAds,
      required this.isNextPageLoading})
      : _result = result;

  @override
  final String query;
  final List<AdEntity> _result;
  @override
  List<AdEntity> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  final FilterEntity filter;
  @override
  final int page;
  @override
  final int totalAds;
  @override
  final bool isNextPageLoading;

  @override
  String toString() {
    return 'SearchAdState.displayResults(query: $query, result: $result, filter: $filter, page: $page, totalAds: $totalAds, isNextPageLoading: $isNextPageLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAdDisplayResultsImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalAds, totalAds) ||
                other.totalAds == totalAds) &&
            (identical(other.isNextPageLoading, isNextPageLoading) ||
                other.isNextPageLoading == isNextPageLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_result),
      filter,
      page,
      totalAds,
      isNextPageLoading);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAdDisplayResultsImplCopyWith<_$SearchAdDisplayResultsImpl>
      get copyWith => __$$SearchAdDisplayResultsImplCopyWithImpl<
          _$SearchAdDisplayResultsImpl>(this, _$identity);
}

abstract class SearchAdDisplayResults implements SearchAdState {
  const factory SearchAdDisplayResults(
      {required final String query,
      required final List<AdEntity> result,
      required final FilterEntity filter,
      required final int page,
      required final int totalAds,
      required final bool isNextPageLoading}) = _$SearchAdDisplayResultsImpl;

  String get query;
  List<AdEntity> get result;
  FilterEntity get filter;
  int get page;
  int get totalAds;
  bool get isNextPageLoading;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAdDisplayResultsImplCopyWith<_$SearchAdDisplayResultsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAdEmptyResultImplCopyWith<$Res> {
  factory _$$SearchAdEmptyResultImplCopyWith(_$SearchAdEmptyResultImpl value,
          $Res Function(_$SearchAdEmptyResultImpl) then) =
      __$$SearchAdEmptyResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, FilterEntity filter});

  $FilterEntityCopyWith<$Res> get filter;
}

/// @nodoc
class __$$SearchAdEmptyResultImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdEmptyResultImpl>
    implements _$$SearchAdEmptyResultImplCopyWith<$Res> {
  __$$SearchAdEmptyResultImplCopyWithImpl(_$SearchAdEmptyResultImpl _value,
      $Res Function(_$SearchAdEmptyResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? filter = null,
  }) {
    return _then(_$SearchAdEmptyResultImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as FilterEntity,
    ));
  }

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterEntityCopyWith<$Res> get filter {
    return $FilterEntityCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc

class _$SearchAdEmptyResultImpl implements SearchAdEmptyResult {
  const _$SearchAdEmptyResultImpl({required this.query, required this.filter});

  @override
  final String query;
  @override
  final FilterEntity filter;

  @override
  String toString() {
    return 'SearchAdState.emptyResult(query: $query, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAdEmptyResultImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, filter);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAdEmptyResultImplCopyWith<_$SearchAdEmptyResultImpl> get copyWith =>
      __$$SearchAdEmptyResultImplCopyWithImpl<_$SearchAdEmptyResultImpl>(
          this, _$identity);
}

abstract class SearchAdEmptyResult implements SearchAdState {
  const factory SearchAdEmptyResult(
      {required final String query,
      required final FilterEntity filter}) = _$SearchAdEmptyResultImpl;

  String get query;
  FilterEntity get filter;

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAdEmptyResultImplCopyWith<_$SearchAdEmptyResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAdQueryEmptyImplCopyWith<$Res> {
  factory _$$SearchAdQueryEmptyImplCopyWith(_$SearchAdQueryEmptyImpl value,
          $Res Function(_$SearchAdQueryEmptyImpl) then) =
      __$$SearchAdQueryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchAdQueryEmptyImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdQueryEmptyImpl>
    implements _$$SearchAdQueryEmptyImplCopyWith<$Res> {
  __$$SearchAdQueryEmptyImplCopyWithImpl(_$SearchAdQueryEmptyImpl _value,
      $Res Function(_$SearchAdQueryEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchAdQueryEmptyImpl implements SearchAdQueryEmpty {
  const _$SearchAdQueryEmptyImpl();

  @override
  String toString() {
    return 'SearchAdState.emptyQuery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchAdQueryEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SearchAdQueryEmpty implements SearchAdState {
  const factory SearchAdQueryEmpty() = _$SearchAdQueryEmptyImpl;
}

/// @nodoc
abstract class _$$SearchAdLoadingImplCopyWith<$Res> {
  factory _$$SearchAdLoadingImplCopyWith(_$SearchAdLoadingImpl value,
          $Res Function(_$SearchAdLoadingImpl) then) =
      __$$SearchAdLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchAdLoadingImplCopyWithImpl<$Res>
    extends _$SearchAdStateCopyWithImpl<$Res, _$SearchAdLoadingImpl>
    implements _$$SearchAdLoadingImplCopyWith<$Res> {
  __$$SearchAdLoadingImplCopyWithImpl(
      _$SearchAdLoadingImpl _value, $Res Function(_$SearchAdLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchAdState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchAdLoadingImpl implements SearchAdLoading {
  const _$SearchAdLoadingImpl();

  @override
  String toString() {
    return 'SearchAdState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchAdLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SearchAdLoading implements SearchAdState {
  const factory SearchAdLoading() = _$SearchAdLoadingImpl;
}
