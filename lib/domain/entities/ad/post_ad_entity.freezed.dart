// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_ad_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostAdEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  AdType get adType => throw _privateConstructorUsedError;
  List<PhotoEntity> get photos => throw _privateConstructorUsedError;
  CityEntity get city => throw _privateConstructorUsedError;
  String get renterId => throw _privateConstructorUsedError;
  String get renterName => throw _privateConstructorUsedError;
  String? get renterPhotoUrl => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;

  /// Create a copy of PostAdEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostAdEntityCopyWith<PostAdEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAdEntityCopyWith<$Res> {
  factory $PostAdEntityCopyWith(
          PostAdEntity value, $Res Function(PostAdEntity) then) =
      _$PostAdEntityCopyWithImpl<$Res, PostAdEntity>;
  @useResult
  $Res call(
      {String title,
      String description,
      int? price,
      AdType adType,
      List<PhotoEntity> photos,
      CityEntity city,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  $CityEntityCopyWith<$Res> get city;
}

/// @nodoc
class _$PostAdEntityCopyWithImpl<$Res, $Val extends PostAdEntity>
    implements $PostAdEntityCopyWith<$Res> {
  _$PostAdEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostAdEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? photos = null,
    Object? city = null,
    Object? renterId = null,
    Object? renterName = null,
    Object? renterPhotoUrl = freezed,
    Object? creationDate = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      adType: null == adType
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as AdType,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity,
      renterId: null == renterId
          ? _value.renterId
          : renterId // ignore: cast_nullable_to_non_nullable
              as String,
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String,
      renterPhotoUrl: freezed == renterPhotoUrl
          ? _value.renterPhotoUrl
          : renterPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of PostAdEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityEntityCopyWith<$Res> get city {
    return $CityEntityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostAdEntityImplCopyWith<$Res>
    implements $PostAdEntityCopyWith<$Res> {
  factory _$$PostAdEntityImplCopyWith(
          _$PostAdEntityImpl value, $Res Function(_$PostAdEntityImpl) then) =
      __$$PostAdEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int? price,
      AdType adType,
      List<PhotoEntity> photos,
      CityEntity city,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  @override
  $CityEntityCopyWith<$Res> get city;
}

/// @nodoc
class __$$PostAdEntityImplCopyWithImpl<$Res>
    extends _$PostAdEntityCopyWithImpl<$Res, _$PostAdEntityImpl>
    implements _$$PostAdEntityImplCopyWith<$Res> {
  __$$PostAdEntityImplCopyWithImpl(
      _$PostAdEntityImpl _value, $Res Function(_$PostAdEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostAdEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? photos = null,
    Object? city = null,
    Object? renterId = null,
    Object? renterName = null,
    Object? renterPhotoUrl = freezed,
    Object? creationDate = null,
  }) {
    return _then(_$PostAdEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      adType: null == adType
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as AdType,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityEntity,
      renterId: null == renterId
          ? _value.renterId
          : renterId // ignore: cast_nullable_to_non_nullable
              as String,
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String,
      renterPhotoUrl: freezed == renterPhotoUrl
          ? _value.renterPhotoUrl
          : renterPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PostAdEntityImpl implements _PostAdEntity {
  const _$PostAdEntityImpl(
      {required this.title,
      required this.description,
      this.price,
      required this.adType,
      required final List<PhotoEntity> photos,
      required this.city,
      required this.renterId,
      required this.renterName,
      this.renterPhotoUrl,
      required this.creationDate})
      : _photos = photos;

  @override
  final String title;
  @override
  final String description;
  @override
  final int? price;
  @override
  final AdType adType;
  final List<PhotoEntity> _photos;
  @override
  List<PhotoEntity> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final CityEntity city;
  @override
  final String renterId;
  @override
  final String renterName;
  @override
  final String? renterPhotoUrl;
  @override
  final DateTime creationDate;

  @override
  String toString() {
    return 'PostAdEntity(title: $title, description: $description, price: $price, adType: $adType, photos: $photos, city: $city, renterId: $renterId, renterName: $renterName, renterPhotoUrl: $renterPhotoUrl, creationDate: $creationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAdEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.adType, adType) || other.adType == adType) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.renterId, renterId) ||
                other.renterId == renterId) &&
            (identical(other.renterName, renterName) ||
                other.renterName == renterName) &&
            (identical(other.renterPhotoUrl, renterPhotoUrl) ||
                other.renterPhotoUrl == renterPhotoUrl) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      price,
      adType,
      const DeepCollectionEquality().hash(_photos),
      city,
      renterId,
      renterName,
      renterPhotoUrl,
      creationDate);

  /// Create a copy of PostAdEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAdEntityImplCopyWith<_$PostAdEntityImpl> get copyWith =>
      __$$PostAdEntityImplCopyWithImpl<_$PostAdEntityImpl>(this, _$identity);
}

abstract class _PostAdEntity implements PostAdEntity {
  const factory _PostAdEntity(
      {required final String title,
      required final String description,
      final int? price,
      required final AdType adType,
      required final List<PhotoEntity> photos,
      required final CityEntity city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _$PostAdEntityImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get price;
  @override
  AdType get adType;
  @override
  List<PhotoEntity> get photos;
  @override
  CityEntity get city;
  @override
  String get renterId;
  @override
  String get renterName;
  @override
  String? get renterPhotoUrl;
  @override
  DateTime get creationDate;

  /// Create a copy of PostAdEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostAdEntityImplCopyWith<_$PostAdEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
