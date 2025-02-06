// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sought_ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoughtAdModel _$SoughtAdModelFromJson(Map<String, dynamic> json) {
  return _SoughtAdModel.fromJson(json);
}

/// @nodoc
mixin _$SoughtAdModel {
// ignore: invalid_annotation_target
  @JsonKey(name: 'objectID')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String get adType => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get postcode =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: '_geoloc')
  GeolocModel get geoloc => throw _privateConstructorUsedError;
  List<String> get photosUrl => throw _privateConstructorUsedError;
  String get renterId => throw _privateConstructorUsedError;
  String get renterName => throw _privateConstructorUsedError;
  String? get renterPhotoUrl => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;

  /// Serializes this SoughtAdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SoughtAdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoughtAdModelCopyWith<SoughtAdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoughtAdModelCopyWith<$Res> {
  factory $SoughtAdModelCopyWith(
          SoughtAdModel value, $Res Function(SoughtAdModel) then) =
      _$SoughtAdModelCopyWithImpl<$Res, SoughtAdModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'objectID') String id,
      String title,
      String description,
      double? price,
      String adType,
      String city,
      String postcode,
      @JsonKey(name: '_geoloc') GeolocModel geoloc,
      List<String> photosUrl,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  $GeolocModelCopyWith<$Res> get geoloc;
}

/// @nodoc
class _$SoughtAdModelCopyWithImpl<$Res, $Val extends SoughtAdModel>
    implements $SoughtAdModelCopyWith<$Res> {
  _$SoughtAdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoughtAdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? city = null,
    Object? postcode = null,
    Object? geoloc = null,
    Object? photosUrl = null,
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      geoloc: null == geoloc
          ? _value.geoloc
          : geoloc // ignore: cast_nullable_to_non_nullable
              as GeolocModel,
      photosUrl: null == photosUrl
          ? _value.photosUrl
          : photosUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

  /// Create a copy of SoughtAdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeolocModelCopyWith<$Res> get geoloc {
    return $GeolocModelCopyWith<$Res>(_value.geoloc, (value) {
      return _then(_value.copyWith(geoloc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SoughtAdModelImplCopyWith<$Res>
    implements $SoughtAdModelCopyWith<$Res> {
  factory _$$SoughtAdModelImplCopyWith(
          _$SoughtAdModelImpl value, $Res Function(_$SoughtAdModelImpl) then) =
      __$$SoughtAdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'objectID') String id,
      String title,
      String description,
      double? price,
      String adType,
      String city,
      String postcode,
      @JsonKey(name: '_geoloc') GeolocModel geoloc,
      List<String> photosUrl,
      String renterId,
      String renterName,
      String? renterPhotoUrl,
      DateTime creationDate});

  @override
  $GeolocModelCopyWith<$Res> get geoloc;
}

/// @nodoc
class __$$SoughtAdModelImplCopyWithImpl<$Res>
    extends _$SoughtAdModelCopyWithImpl<$Res, _$SoughtAdModelImpl>
    implements _$$SoughtAdModelImplCopyWith<$Res> {
  __$$SoughtAdModelImplCopyWithImpl(
      _$SoughtAdModelImpl _value, $Res Function(_$SoughtAdModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoughtAdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = freezed,
    Object? adType = null,
    Object? city = null,
    Object? postcode = null,
    Object? geoloc = null,
    Object? photosUrl = null,
    Object? renterId = null,
    Object? renterName = null,
    Object? renterPhotoUrl = freezed,
    Object? creationDate = null,
  }) {
    return _then(_$SoughtAdModelImpl(
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      geoloc: null == geoloc
          ? _value.geoloc
          : geoloc // ignore: cast_nullable_to_non_nullable
              as GeolocModel,
      photosUrl: null == photosUrl
          ? _value._photosUrl
          : photosUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$SoughtAdModelImpl extends _SoughtAdModel {
  const _$SoughtAdModelImpl(
      {@JsonKey(name: 'objectID') required this.id,
      required this.title,
      required this.description,
      this.price,
      required this.adType,
      required this.city,
      required this.postcode,
      @JsonKey(name: '_geoloc') required this.geoloc,
      final List<String> photosUrl = const [],
      required this.renterId,
      required this.renterName,
      this.renterPhotoUrl,
      required this.creationDate})
      : _photosUrl = photosUrl,
        super._();

  factory _$SoughtAdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoughtAdModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'objectID')
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double? price;
  @override
  final String adType;
  @override
  final String city;
  @override
  final String postcode;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '_geoloc')
  final GeolocModel geoloc;
  final List<String> _photosUrl;
  @override
  @JsonKey()
  List<String> get photosUrl {
    if (_photosUrl is EqualUnmodifiableListView) return _photosUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photosUrl);
  }

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
    return 'SoughtAdModel(id: $id, title: $title, description: $description, price: $price, adType: $adType, city: $city, postcode: $postcode, geoloc: $geoloc, photosUrl: $photosUrl, renterId: $renterId, renterName: $renterName, renterPhotoUrl: $renterPhotoUrl, creationDate: $creationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoughtAdModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.adType, adType) || other.adType == adType) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.geoloc, geoloc) || other.geoloc == geoloc) &&
            const DeepCollectionEquality()
                .equals(other._photosUrl, _photosUrl) &&
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
      city,
      postcode,
      geoloc,
      const DeepCollectionEquality().hash(_photosUrl),
      renterId,
      renterName,
      renterPhotoUrl,
      creationDate);

  /// Create a copy of SoughtAdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SoughtAdModelImplCopyWith<_$SoughtAdModelImpl> get copyWith =>
      __$$SoughtAdModelImplCopyWithImpl<_$SoughtAdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoughtAdModelImplToJson(
      this,
    );
  }
}

abstract class _SoughtAdModel extends SoughtAdModel {
  const factory _SoughtAdModel(
      {@JsonKey(name: 'objectID') required final String id,
      required final String title,
      required final String description,
      final double? price,
      required final String adType,
      required final String city,
      required final String postcode,
      @JsonKey(name: '_geoloc') required final GeolocModel geoloc,
      final List<String> photosUrl,
      required final String renterId,
      required final String renterName,
      final String? renterPhotoUrl,
      required final DateTime creationDate}) = _$SoughtAdModelImpl;
  const _SoughtAdModel._() : super._();

  factory _SoughtAdModel.fromJson(Map<String, dynamic> json) =
      _$SoughtAdModelImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'objectID')
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
  String get city;
  @override
  String get postcode; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: '_geoloc')
  GeolocModel get geoloc;
  @override
  List<String> get photosUrl;
  @override
  String get renterId;
  @override
  String get renterName;
  @override
  String? get renterPhotoUrl;
  @override
  DateTime get creationDate;

  /// Create a copy of SoughtAdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SoughtAdModelImplCopyWith<_$SoughtAdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeolocModel _$GeolocModelFromJson(Map<String, dynamic> json) {
  return _GeolocModel.fromJson(json);
}

/// @nodoc
mixin _$GeolocModel {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this GeolocModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeolocModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeolocModelCopyWith<GeolocModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocModelCopyWith<$Res> {
  factory $GeolocModelCopyWith(
          GeolocModel value, $Res Function(GeolocModel) then) =
      _$GeolocModelCopyWithImpl<$Res, GeolocModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$GeolocModelCopyWithImpl<$Res, $Val extends GeolocModel>
    implements $GeolocModelCopyWith<$Res> {
  _$GeolocModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeolocModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeolocModelImplCopyWith<$Res>
    implements $GeolocModelCopyWith<$Res> {
  factory _$$GeolocModelImplCopyWith(
          _$GeolocModelImpl value, $Res Function(_$GeolocModelImpl) then) =
      __$$GeolocModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$GeolocModelImplCopyWithImpl<$Res>
    extends _$GeolocModelCopyWithImpl<$Res, _$GeolocModelImpl>
    implements _$$GeolocModelImplCopyWith<$Res> {
  __$$GeolocModelImplCopyWithImpl(
      _$GeolocModelImpl _value, $Res Function(_$GeolocModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeolocModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$GeolocModelImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeolocModelImpl implements _GeolocModel {
  const _$GeolocModelImpl({required this.lat, required this.lng});

  factory _$GeolocModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeolocModelImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'GeolocModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeolocModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of GeolocModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeolocModelImplCopyWith<_$GeolocModelImpl> get copyWith =>
      __$$GeolocModelImplCopyWithImpl<_$GeolocModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeolocModelImplToJson(
      this,
    );
  }
}

abstract class _GeolocModel implements GeolocModel {
  const factory _GeolocModel(
      {required final double lat,
      required final double lng}) = _$GeolocModelImpl;

  factory _GeolocModel.fromJson(Map<String, dynamic> json) =
      _$GeolocModelImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of GeolocModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeolocModelImplCopyWith<_$GeolocModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
