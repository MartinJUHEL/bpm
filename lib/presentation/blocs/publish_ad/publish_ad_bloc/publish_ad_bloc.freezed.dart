// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publish_ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PublishAdState {
  int get pageIndex => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isTitleValid => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  AdType? get adType => throw _privateConstructorUsedError;
  bool get isDescriptionValid => throw _privateConstructorUsedError;
  List<PhotoEntity> get photos => throw _privateConstructorUsedError;
  CityEntity? get city => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPublished => throw _privateConstructorUsedError;

  /// Create a copy of PublishAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublishAdStateCopyWith<PublishAdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishAdStateCopyWith<$Res> {
  factory $PublishAdStateCopyWith(
          PublishAdState value, $Res Function(PublishAdState) then) =
      _$PublishAdStateCopyWithImpl<$Res, PublishAdState>;
  @useResult
  $Res call(
      {int pageIndex,
      String title,
      bool isTitleValid,
      String description,
      double? price,
      AdType? adType,
      bool isDescriptionValid,
      List<PhotoEntity> photos,
      CityEntity? city,
      String errorMessage,
      bool isLoading,
      bool isPublished});

  $CityEntityCopyWith<$Res>? get city;
}

/// @nodoc
class _$PublishAdStateCopyWithImpl<$Res, $Val extends PublishAdState>
    implements $PublishAdStateCopyWith<$Res> {
  _$PublishAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublishAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? title = null,
    Object? isTitleValid = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = freezed,
    Object? isDescriptionValid = null,
    Object? photos = null,
    Object? city = freezed,
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? isPublished = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isTitleValid: null == isTitleValid
          ? _value.isTitleValid
          : isTitleValid // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      adType: freezed == adType
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as AdType?,
      isDescriptionValid: null == isDescriptionValid
          ? _value.isDescriptionValid
          : isDescriptionValid // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PublishAdState
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
abstract class _$$PublishAdStateImplCopyWith<$Res>
    implements $PublishAdStateCopyWith<$Res> {
  factory _$$PublishAdStateImplCopyWith(_$PublishAdStateImpl value,
          $Res Function(_$PublishAdStateImpl) then) =
      __$$PublishAdStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageIndex,
      String title,
      bool isTitleValid,
      String description,
      double? price,
      AdType? adType,
      bool isDescriptionValid,
      List<PhotoEntity> photos,
      CityEntity? city,
      String errorMessage,
      bool isLoading,
      bool isPublished});

  @override
  $CityEntityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$PublishAdStateImplCopyWithImpl<$Res>
    extends _$PublishAdStateCopyWithImpl<$Res, _$PublishAdStateImpl>
    implements _$$PublishAdStateImplCopyWith<$Res> {
  __$$PublishAdStateImplCopyWithImpl(
      _$PublishAdStateImpl _value, $Res Function(_$PublishAdStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublishAdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? title = null,
    Object? isTitleValid = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = freezed,
    Object? isDescriptionValid = null,
    Object? photos = null,
    Object? city = freezed,
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? isPublished = null,
  }) {
    return _then(_$PublishAdStateImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isTitleValid: null == isTitleValid
          ? _value.isTitleValid
          : isTitleValid // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      adType: freezed == adType
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as AdType?,
      isDescriptionValid: null == isDescriptionValid
          ? _value.isDescriptionValid
          : isDescriptionValid // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PublishAdStateImpl extends _PublishAdState {
  const _$PublishAdStateImpl(
      {this.pageIndex = 0,
      this.title = '',
      this.isTitleValid = false,
      this.description = '',
      this.price,
      this.adType,
      this.isDescriptionValid = false,
      final List<PhotoEntity> photos = const [],
      this.city,
      this.errorMessage = '',
      this.isLoading = false,
      this.isPublished = false})
      : _photos = photos,
        super._();

  @override
  @JsonKey()
  final int pageIndex;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final bool isTitleValid;
  @override
  @JsonKey()
  final String description;
  @override
  final double? price;
  @override
  final AdType? adType;
  @override
  @JsonKey()
  final bool isDescriptionValid;
  final List<PhotoEntity> _photos;
  @override
  @JsonKey()
  List<PhotoEntity> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final CityEntity? city;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isPublished;

  @override
  String toString() {
    return 'PublishAdState(pageIndex: $pageIndex, title: $title, isTitleValid: $isTitleValid, description: $description, price: $price, adType: $adType, isDescriptionValid: $isDescriptionValid, photos: $photos, city: $city, errorMessage: $errorMessage, isLoading: $isLoading, isPublished: $isPublished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublishAdStateImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isTitleValid, isTitleValid) ||
                other.isTitleValid == isTitleValid) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.adType, adType) || other.adType == adType) &&
            (identical(other.isDescriptionValid, isDescriptionValid) ||
                other.isDescriptionValid == isDescriptionValid) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageIndex,
      title,
      isTitleValid,
      description,
      price,
      adType,
      isDescriptionValid,
      const DeepCollectionEquality().hash(_photos),
      city,
      errorMessage,
      isLoading,
      isPublished);

  /// Create a copy of PublishAdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublishAdStateImplCopyWith<_$PublishAdStateImpl> get copyWith =>
      __$$PublishAdStateImplCopyWithImpl<_$PublishAdStateImpl>(
          this, _$identity);
}

abstract class _PublishAdState extends PublishAdState {
  const factory _PublishAdState(
      {final int pageIndex,
      final String title,
      final bool isTitleValid,
      final String description,
      final double? price,
      final AdType? adType,
      final bool isDescriptionValid,
      final List<PhotoEntity> photos,
      final CityEntity? city,
      final String errorMessage,
      final bool isLoading,
      final bool isPublished}) = _$PublishAdStateImpl;
  const _PublishAdState._() : super._();

  @override
  int get pageIndex;
  @override
  String get title;
  @override
  bool get isTitleValid;
  @override
  String get description;
  @override
  double? get price;
  @override
  AdType? get adType;
  @override
  bool get isDescriptionValid;
  @override
  List<PhotoEntity> get photos;
  @override
  CityEntity? get city;
  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  bool get isPublished;

  /// Create a copy of PublishAdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublishAdStateImplCopyWith<_$PublishAdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
