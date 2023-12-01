// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadPhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickedImagesFromCamera,
    required TResult Function() pickedImagesFromGallery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickedImagesFromCamera,
    TResult? Function()? pickedImagesFromGallery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickedImagesFromCamera,
    TResult Function()? pickedImagesFromGallery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImagesFromCamera value)
        pickedImagesFromCamera,
    required TResult Function(_PickedImagesFromGallery value)
        pickedImagesFromGallery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPhotosEventCopyWith<$Res> {
  factory $UploadPhotosEventCopyWith(
          UploadPhotosEvent value, $Res Function(UploadPhotosEvent) then) =
      _$UploadPhotosEventCopyWithImpl<$Res, UploadPhotosEvent>;
}

/// @nodoc
class _$UploadPhotosEventCopyWithImpl<$Res, $Val extends UploadPhotosEvent>
    implements $UploadPhotosEventCopyWith<$Res> {
  _$UploadPhotosEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UploadPhotosEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickedImagesFromCamera,
    required TResult Function() pickedImagesFromGallery,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickedImagesFromCamera,
    TResult? Function()? pickedImagesFromGallery,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickedImagesFromCamera,
    TResult Function()? pickedImagesFromGallery,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImagesFromCamera value)
        pickedImagesFromCamera,
    required TResult Function(_PickedImagesFromGallery value)
        pickedImagesFromGallery,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UploadPhotosEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PickedImagesFromCameraImplCopyWith<$Res> {
  factory _$$PickedImagesFromCameraImplCopyWith(
          _$PickedImagesFromCameraImpl value,
          $Res Function(_$PickedImagesFromCameraImpl) then) =
      __$$PickedImagesFromCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickedImagesFromCameraImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$PickedImagesFromCameraImpl>
    implements _$$PickedImagesFromCameraImplCopyWith<$Res> {
  __$$PickedImagesFromCameraImplCopyWithImpl(
      _$PickedImagesFromCameraImpl _value,
      $Res Function(_$PickedImagesFromCameraImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickedImagesFromCameraImpl implements _PickedImagesFromCamera {
  const _$PickedImagesFromCameraImpl();

  @override
  String toString() {
    return 'UploadPhotosEvent.pickedImagesFromCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedImagesFromCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickedImagesFromCamera,
    required TResult Function() pickedImagesFromGallery,
  }) {
    return pickedImagesFromCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickedImagesFromCamera,
    TResult? Function()? pickedImagesFromGallery,
  }) {
    return pickedImagesFromCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickedImagesFromCamera,
    TResult Function()? pickedImagesFromGallery,
    required TResult orElse(),
  }) {
    if (pickedImagesFromCamera != null) {
      return pickedImagesFromCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImagesFromCamera value)
        pickedImagesFromCamera,
    required TResult Function(_PickedImagesFromGallery value)
        pickedImagesFromGallery,
  }) {
    return pickedImagesFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
  }) {
    return pickedImagesFromCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    required TResult orElse(),
  }) {
    if (pickedImagesFromCamera != null) {
      return pickedImagesFromCamera(this);
    }
    return orElse();
  }
}

abstract class _PickedImagesFromCamera implements UploadPhotosEvent {
  const factory _PickedImagesFromCamera() = _$PickedImagesFromCameraImpl;
}

/// @nodoc
abstract class _$$PickedImagesFromGalleryImplCopyWith<$Res> {
  factory _$$PickedImagesFromGalleryImplCopyWith(
          _$PickedImagesFromGalleryImpl value,
          $Res Function(_$PickedImagesFromGalleryImpl) then) =
      __$$PickedImagesFromGalleryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickedImagesFromGalleryImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$PickedImagesFromGalleryImpl>
    implements _$$PickedImagesFromGalleryImplCopyWith<$Res> {
  __$$PickedImagesFromGalleryImplCopyWithImpl(
      _$PickedImagesFromGalleryImpl _value,
      $Res Function(_$PickedImagesFromGalleryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickedImagesFromGalleryImpl implements _PickedImagesFromGallery {
  const _$PickedImagesFromGalleryImpl();

  @override
  String toString() {
    return 'UploadPhotosEvent.pickedImagesFromGallery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedImagesFromGalleryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() pickedImagesFromCamera,
    required TResult Function() pickedImagesFromGallery,
  }) {
    return pickedImagesFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? pickedImagesFromCamera,
    TResult? Function()? pickedImagesFromGallery,
  }) {
    return pickedImagesFromGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? pickedImagesFromCamera,
    TResult Function()? pickedImagesFromGallery,
    required TResult orElse(),
  }) {
    if (pickedImagesFromGallery != null) {
      return pickedImagesFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PickedImagesFromCamera value)
        pickedImagesFromCamera,
    required TResult Function(_PickedImagesFromGallery value)
        pickedImagesFromGallery,
  }) {
    return pickedImagesFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
  }) {
    return pickedImagesFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    required TResult orElse(),
  }) {
    if (pickedImagesFromGallery != null) {
      return pickedImagesFromGallery(this);
    }
    return orElse();
  }
}

abstract class _PickedImagesFromGallery implements UploadPhotosEvent {
  const factory _PickedImagesFromGallery() = _$PickedImagesFromGalleryImpl;
}

/// @nodoc
mixin _$UploadPhotosState {
  UploadPhotosStatus get status => throw _privateConstructorUsedError;
  List<XFile> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadPhotosStateCopyWith<UploadPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPhotosStateCopyWith<$Res> {
  factory $UploadPhotosStateCopyWith(
          UploadPhotosState value, $Res Function(UploadPhotosState) then) =
      _$UploadPhotosStateCopyWithImpl<$Res, UploadPhotosState>;
  @useResult
  $Res call({UploadPhotosStatus status, List<XFile> photos});
}

/// @nodoc
class _$UploadPhotosStateCopyWithImpl<$Res, $Val extends UploadPhotosState>
    implements $UploadPhotosStateCopyWith<$Res> {
  _$UploadPhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UploadPhotosStatus,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadPhotosStateImplCopyWith<$Res>
    implements $UploadPhotosStateCopyWith<$Res> {
  factory _$$UploadPhotosStateImplCopyWith(_$UploadPhotosStateImpl value,
          $Res Function(_$UploadPhotosStateImpl) then) =
      __$$UploadPhotosStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UploadPhotosStatus status, List<XFile> photos});
}

/// @nodoc
class __$$UploadPhotosStateImplCopyWithImpl<$Res>
    extends _$UploadPhotosStateCopyWithImpl<$Res, _$UploadPhotosStateImpl>
    implements _$$UploadPhotosStateImplCopyWith<$Res> {
  __$$UploadPhotosStateImplCopyWithImpl(_$UploadPhotosStateImpl _value,
      $Res Function(_$UploadPhotosStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? photos = null,
  }) {
    return _then(_$UploadPhotosStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UploadPhotosStatus,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$UploadPhotosStateImpl implements _UploadPhotosState {
  const _$UploadPhotosStateImpl(
      {this.status = UploadPhotosStatus.initial,
      final List<XFile> photos = const []})
      : _photos = photos;

  @override
  @JsonKey()
  final UploadPhotosStatus status;
  final List<XFile> _photos;
  @override
  @JsonKey()
  List<XFile> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'UploadPhotosState(status: $status, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPhotosStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPhotosStateImplCopyWith<_$UploadPhotosStateImpl> get copyWith =>
      __$$UploadPhotosStateImplCopyWithImpl<_$UploadPhotosStateImpl>(
          this, _$identity);
}

abstract class _UploadPhotosState implements UploadPhotosState {
  const factory _UploadPhotosState(
      {final UploadPhotosStatus status,
      final List<XFile> photos}) = _$UploadPhotosStateImpl;

  @override
  UploadPhotosStatus get status;
  @override
  List<XFile> get photos;
  @override
  @JsonKey(ignore: true)
  _$$UploadPhotosStateImplCopyWith<_$UploadPhotosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
