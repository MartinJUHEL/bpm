// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostAdModel _$PostAdModelFromJson(Map<String, dynamic> json) {
  return _PostAdModel.fromJson(json);
}

/// @nodoc
mixin _$PostAdModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String get adType => throw _privateConstructorUsedError;
  CityModel get city => throw _privateConstructorUsedError;
  String get renterId => throw _privateConstructorUsedError;
  String get renterName => throw _privateConstructorUsedError;
  String? get renterPhotoUrl => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;

  /// Serializes this PostAdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostAdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostAdModelCopyWith<PostAdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAdModelCopyWith<$Res> {
  factory $PostAdModelCopyWith(
          PostAdModel value, $Res Function(PostAdModel) then) =
      _$PostAdModelCopyWithImpl<$Res, PostAdModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      int? price,
      String adType,
      CityModel city,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  $CityModelCopyWith<$Res> get city;
}

/// @nodoc
class _$PostAdModelCopyWithImpl<$Res, $Val extends PostAdModel>
    implements $PostAdModelCopyWith<$Res> {
  _$PostAdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostAdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
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
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel,
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

  /// Create a copy of PostAdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res> get city {
    return $CityModelCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostAdModelImplCopyWith<$Res>
    implements $PostAdModelCopyWith<$Res> {
  factory _$$PostAdModelImplCopyWith(
          _$PostAdModelImpl value, $Res Function(_$PostAdModelImpl) then) =
      __$$PostAdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int? price,
      String adType,
      CityModel city,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  @override
  $CityModelCopyWith<$Res> get city;
}

/// @nodoc
class __$$PostAdModelImplCopyWithImpl<$Res>
    extends _$PostAdModelCopyWithImpl<$Res, _$PostAdModelImpl>
    implements _$$PostAdModelImplCopyWith<$Res> {
  __$$PostAdModelImplCopyWithImpl(
      _$PostAdModelImpl _value, $Res Function(_$PostAdModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostAdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? city = null,
    Object? renterId = null,
    Object? renterName = null,
    Object? renterPhotoUrl = freezed,
    Object? creationDate = null,
  }) {
    return _then(_$PostAdModelImpl(
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
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel,
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
@JsonSerializable()
class _$PostAdModelImpl extends _PostAdModel {
  const _$PostAdModelImpl(
      {required this.title,
      required this.description,
      this.price,
      required this.adType,
      required this.city,
      required this.renterId,
      required this.renterName,
      this.renterPhotoUrl,
      required this.creationDate})
      : super._();

  factory _$PostAdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostAdModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int? price;
  @override
  final String adType;
  @override
  final CityModel city;
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
    return 'PostAdModel(title: $title, description: $description, price: $price, adType: $adType, city: $city, renterId: $renterId, renterName: $renterName, renterPhotoUrl: $renterPhotoUrl, creationDate: $creationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAdModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.adType, adType) || other.adType == adType) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, price,
      adType, city, renterId, renterName, renterPhotoUrl, creationDate);

  /// Create a copy of PostAdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAdModelImplCopyWith<_$PostAdModelImpl> get copyWith =>
      __$$PostAdModelImplCopyWithImpl<_$PostAdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostAdModelImplToJson(
      this,
    );
  }
}

abstract class _PostAdModel extends PostAdModel {
  const factory _PostAdModel(
      {required final String title,
      required final String description,
      final int? price,
      required final String adType,
      required final CityModel city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _$PostAdModelImpl;
  const _PostAdModel._() : super._();

  factory _PostAdModel.fromJson(Map<String, dynamic> json) =
      _$PostAdModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get price;
  @override
  String get adType;
  @override
  CityModel get city;
  @override
  String get renterId;
  @override
  String get renterName;
  @override
  String? get renterPhotoUrl;
  @override
  DateTime get creationDate;

  /// Create a copy of PostAdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostAdModelImplCopyWith<_$PostAdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
