// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_photos_bloc_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickPhotosBlocState {
  List<PhotoEntity> get photos => throw _privateConstructorUsedError;

  /// Create a copy of PickPhotosBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PickPhotosBlocStateCopyWith<PickPhotosBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickPhotosBlocStateCopyWith<$Res> {
  factory $PickPhotosBlocStateCopyWith(
          PickPhotosBlocState value, $Res Function(PickPhotosBlocState) then) =
      _$PickPhotosBlocStateCopyWithImpl<$Res, PickPhotosBlocState>;
  @useResult
  $Res call({List<PhotoEntity> photos});
}

/// @nodoc
class _$PickPhotosBlocStateCopyWithImpl<$Res, $Val extends PickPhotosBlocState>
    implements $PickPhotosBlocStateCopyWith<$Res> {
  _$PickPhotosBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickPhotosBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickPhotosBlocStateImplCopyWith<$Res>
    implements $PickPhotosBlocStateCopyWith<$Res> {
  factory _$$PickPhotosBlocStateImplCopyWith(_$PickPhotosBlocStateImpl value,
          $Res Function(_$PickPhotosBlocStateImpl) then) =
      __$$PickPhotosBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PhotoEntity> photos});
}

/// @nodoc
class __$$PickPhotosBlocStateImplCopyWithImpl<$Res>
    extends _$PickPhotosBlocStateCopyWithImpl<$Res, _$PickPhotosBlocStateImpl>
    implements _$$PickPhotosBlocStateImplCopyWith<$Res> {
  __$$PickPhotosBlocStateImplCopyWithImpl(_$PickPhotosBlocStateImpl _value,
      $Res Function(_$PickPhotosBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickPhotosBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$PickPhotosBlocStateImpl(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoEntity>,
    ));
  }
}

/// @nodoc

class _$PickPhotosBlocStateImpl implements _PickPhotosBlocState {
  const _$PickPhotosBlocStateImpl({final List<PhotoEntity> photos = const []})
      : _photos = photos;

  final List<PhotoEntity> _photos;
  @override
  @JsonKey()
  List<PhotoEntity> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PickPhotosBlocState(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickPhotosBlocStateImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of PickPhotosBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickPhotosBlocStateImplCopyWith<_$PickPhotosBlocStateImpl> get copyWith =>
      __$$PickPhotosBlocStateImplCopyWithImpl<_$PickPhotosBlocStateImpl>(
          this, _$identity);
}

abstract class _PickPhotosBlocState implements PickPhotosBlocState {
  const factory _PickPhotosBlocState({final List<PhotoEntity> photos}) =
      _$PickPhotosBlocStateImpl;

  @override
  List<PhotoEntity> get photos;

  /// Create a copy of PickPhotosBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickPhotosBlocStateImplCopyWith<_$PickPhotosBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
