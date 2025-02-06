// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdPageModel {
  List<SoughtAdModel> get ads => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Create a copy of AdPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdPageModelCopyWith<AdPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdPageModelCopyWith<$Res> {
  factory $AdPageModelCopyWith(
          AdPageModel value, $Res Function(AdPageModel) then) =
      _$AdPageModelCopyWithImpl<$Res, AdPageModel>;
  @useResult
  $Res call({List<SoughtAdModel> ads, int total});
}

/// @nodoc
class _$AdPageModelCopyWithImpl<$Res, $Val extends AdPageModel>
    implements $AdPageModelCopyWith<$Res> {
  _$AdPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      ads: null == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<SoughtAdModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdPageModelImplCopyWith<$Res>
    implements $AdPageModelCopyWith<$Res> {
  factory _$$AdPageModelImplCopyWith(
          _$AdPageModelImpl value, $Res Function(_$AdPageModelImpl) then) =
      __$$AdPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SoughtAdModel> ads, int total});
}

/// @nodoc
class __$$AdPageModelImplCopyWithImpl<$Res>
    extends _$AdPageModelCopyWithImpl<$Res, _$AdPageModelImpl>
    implements _$$AdPageModelImplCopyWith<$Res> {
  __$$AdPageModelImplCopyWithImpl(
      _$AdPageModelImpl _value, $Res Function(_$AdPageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ads = null,
    Object? total = null,
  }) {
    return _then(_$AdPageModelImpl(
      ads: null == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<SoughtAdModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdPageModelImpl extends _AdPageModel {
  const _$AdPageModelImpl(
      {required final List<SoughtAdModel> ads, required this.total})
      : _ads = ads,
        super._();

  final List<SoughtAdModel> _ads;
  @override
  List<SoughtAdModel> get ads {
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ads);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'AdPageModel(ads: $ads, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdPageModelImpl &&
            const DeepCollectionEquality().equals(other._ads, _ads) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ads), total);

  /// Create a copy of AdPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdPageModelImplCopyWith<_$AdPageModelImpl> get copyWith =>
      __$$AdPageModelImplCopyWithImpl<_$AdPageModelImpl>(this, _$identity);
}

abstract class _AdPageModel extends AdPageModel {
  const factory _AdPageModel(
      {required final List<SoughtAdModel> ads,
      required final int total}) = _$AdPageModelImpl;
  const _AdPageModel._() : super._();

  @override
  List<SoughtAdModel> get ads;
  @override
  int get total;

  /// Create a copy of AdPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdPageModelImplCopyWith<_$AdPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
