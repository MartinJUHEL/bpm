// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_city_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchCityState {
  String get query => throw _privateConstructorUsedError;
  List<CityEntity> get suggestions => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get locationLoading => throw _privateConstructorUsedError;
  CityEntity? get selectedCity => throw _privateConstructorUsedError;

  /// Create a copy of SearchCityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchCityStateCopyWith<SearchCityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCityStateCopyWith<$Res> {
  factory $SearchCityStateCopyWith(
          SearchCityState value, $Res Function(SearchCityState) then) =
      _$SearchCityStateCopyWithImpl<$Res, SearchCityState>;
  @useResult
  $Res call(
      {String query,
      List<CityEntity> suggestions,
      bool hasError,
      bool isLoading,
      bool locationLoading,
      CityEntity? selectedCity});

  $CityEntityCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class _$SearchCityStateCopyWithImpl<$Res, $Val extends SearchCityState>
    implements $SearchCityStateCopyWith<$Res> {
  _$SearchCityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchCityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? suggestions = null,
    Object? hasError = null,
    Object? isLoading = null,
    Object? locationLoading = null,
    Object? selectedCity = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationLoading: null == locationLoading
          ? _value.locationLoading
          : locationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
    ) as $Val);
  }

  /// Create a copy of SearchCityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityEntityCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityEntityCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCityStateImplCopyWith<$Res>
    implements $SearchCityStateCopyWith<$Res> {
  factory _$$SearchCityStateImplCopyWith(_$SearchCityStateImpl value,
          $Res Function(_$SearchCityStateImpl) then) =
      __$$SearchCityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      List<CityEntity> suggestions,
      bool hasError,
      bool isLoading,
      bool locationLoading,
      CityEntity? selectedCity});

  @override
  $CityEntityCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$$SearchCityStateImplCopyWithImpl<$Res>
    extends _$SearchCityStateCopyWithImpl<$Res, _$SearchCityStateImpl>
    implements _$$SearchCityStateImplCopyWith<$Res> {
  __$$SearchCityStateImplCopyWithImpl(
      _$SearchCityStateImpl _value, $Res Function(_$SearchCityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? suggestions = null,
    Object? hasError = null,
    Object? isLoading = null,
    Object? locationLoading = null,
    Object? selectedCity = freezed,
  }) {
    return _then(_$SearchCityStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<CityEntity>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationLoading: null == locationLoading
          ? _value.locationLoading
          : locationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
    ));
  }
}

/// @nodoc

class _$SearchCityStateImpl extends _SearchCityState {
  const _$SearchCityStateImpl(
      {this.query = '',
      final List<CityEntity> suggestions = const [],
      this.hasError = false,
      this.isLoading = false,
      this.locationLoading = false,
      this.selectedCity})
      : _suggestions = suggestions,
        super._();

  @override
  @JsonKey()
  final String query;
  final List<CityEntity> _suggestions;
  @override
  @JsonKey()
  List<CityEntity> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool locationLoading;
  @override
  final CityEntity? selectedCity;

  @override
  String toString() {
    return 'SearchCityState(query: $query, suggestions: $suggestions, hasError: $hasError, isLoading: $isLoading, locationLoading: $locationLoading, selectedCity: $selectedCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCityStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.locationLoading, locationLoading) ||
                other.locationLoading == locationLoading) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_suggestions),
      hasError,
      isLoading,
      locationLoading,
      selectedCity);

  /// Create a copy of SearchCityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCityStateImplCopyWith<_$SearchCityStateImpl> get copyWith =>
      __$$SearchCityStateImplCopyWithImpl<_$SearchCityStateImpl>(
          this, _$identity);
}

abstract class _SearchCityState extends SearchCityState {
  const factory _SearchCityState(
      {final String query,
      final List<CityEntity> suggestions,
      final bool hasError,
      final bool isLoading,
      final bool locationLoading,
      final CityEntity? selectedCity}) = _$SearchCityStateImpl;
  const _SearchCityState._() : super._();

  @override
  String get query;
  @override
  List<CityEntity> get suggestions;
  @override
  bool get hasError;
  @override
  bool get isLoading;
  @override
  bool get locationLoading;
  @override
  CityEntity? get selectedCity;

  /// Create a copy of SearchCityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCityStateImplCopyWith<_$SearchCityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
