// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdModel _$AdModelFromJson(Map<String, dynamic> json) {
  return _AdEntity.fromJson(json);
}

/// @nodoc
mixin _$AdModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String get adType => throw _privateConstructorUsedError;
  List<String> get photosUrl => throw _privateConstructorUsedError;
  CityModel get city => throw _privateConstructorUsedError;
  String get renterId => throw _privateConstructorUsedError;
  String get renterName => throw _privateConstructorUsedError;
  String? get renterPhotoUrl => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;

  /// Serializes this AdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdModelCopyWith<AdModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdModelCopyWith<$Res> {
  factory $AdModelCopyWith(AdModel value, $Res Function(AdModel) then) =
      _$AdModelCopyWithImpl<$Res, AdModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      double? price,
      String adType,
      List<String> photosUrl,
      CityModel city,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  $CityModelCopyWith<$Res> get city;
}

/// @nodoc
class _$AdModelCopyWithImpl<$Res, $Val extends AdModel>
    implements $AdModelCopyWith<$Res> {
  _$AdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? photosUrl = null,
    Object? city = null,
    Object? renterId = null,
    Object? renterName = null,
    Object? renterPhotoUrl = freezed,
    Object? creationDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as double?,
      adType: null == adType
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as String,
      photosUrl: null == photosUrl
          ? _value.photosUrl
          : photosUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

  /// Create a copy of AdModel
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
abstract class _$$AdEntityImplCopyWith<$Res> implements $AdModelCopyWith<$Res> {
  factory _$$AdEntityImplCopyWith(
          _$AdEntityImpl value, $Res Function(_$AdEntityImpl) then) =
      __$$AdEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      double? price,
      String adType,
      List<String> photosUrl,
      CityModel city,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  @override
  $CityModelCopyWith<$Res> get city;
}

/// @nodoc
class __$$AdEntityImplCopyWithImpl<$Res>
    extends _$AdModelCopyWithImpl<$Res, _$AdEntityImpl>
    implements _$$AdEntityImplCopyWith<$Res> {
  __$$AdEntityImplCopyWithImpl(
      _$AdEntityImpl _value, $Res Function(_$AdEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? photosUrl = null,
    Object? city = null,
    Object? renterId = null,
    Object? renterName = null,
    Object? renterPhotoUrl = freezed,
    Object? creationDate = null,
  }) {
    return _then(_$AdEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as double?,
      adType: null == adType
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as String,
      photosUrl: null == photosUrl
          ? _value._photosUrl
          : photosUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$AdEntityImpl extends _AdEntity {
  const _$AdEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      this.price,
      required this.adType,
      final List<String> photosUrl = const [],
      required this.city,
      required this.renterId,
      required this.renterName,
      this.renterPhotoUrl,
      required this.creationDate})
      : _photosUrl = photosUrl,
        super._();

  factory _$AdEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double? price;
  @override
  final String adType;
  final List<String> _photosUrl;
  @override
  @JsonKey()
  List<String> get photosUrl {
    if (_photosUrl is EqualUnmodifiableListView) return _photosUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photosUrl);
  }

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
    return 'AdModel(id: $id, title: $title, description: $description, price: $price, adType: $adType, photosUrl: $photosUrl, city: $city, renterId: $renterId, renterName: $renterName, renterPhotoUrl: $renterPhotoUrl, creationDate: $creationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.adType, adType) || other.adType == adType) &&
            const DeepCollectionEquality()
                .equals(other._photosUrl, _photosUrl) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      adType,
      const DeepCollectionEquality().hash(_photosUrl),
      city,
      renterId,
      renterName,
      renterPhotoUrl,
      creationDate);

  /// Create a copy of AdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdEntityImplCopyWith<_$AdEntityImpl> get copyWith =>
      __$$AdEntityImplCopyWithImpl<_$AdEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdEntityImplToJson(
      this,
    );
  }
}

abstract class _AdEntity extends AdModel {
  const factory _AdEntity(
      {required final String id,
      required final String title,
      required final String description,
      final double? price,
      required final String adType,
      final List<String> photosUrl,
      required final CityModel city,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _$AdEntityImpl;
  const _AdEntity._() : super._();

  factory _AdEntity.fromJson(Map<String, dynamic> json) =
      _$AdEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double? get price;
  @override
  String get adType;
  @override
  List<String> get photosUrl;
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

  /// Create a copy of AdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdEntityImplCopyWith<_$AdEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
