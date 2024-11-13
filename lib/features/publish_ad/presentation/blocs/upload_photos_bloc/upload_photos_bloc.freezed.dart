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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadPhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PhotoModel> photos) started,
    required TResult Function(String adId) pickedImagesFromCamera,
    required TResult Function(String adId) pickedImagesFromGallery,
    required TResult Function(int index) removedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> photos)? started,
    TResult? Function(String adId)? pickedImagesFromCamera,
    TResult? Function(String adId)? pickedImagesFromGallery,
    TResult? Function(int index)? removedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> photos)? started,
    TResult Function(String adId)? pickedImagesFromCamera,
    TResult Function(String adId)? pickedImagesFromGallery,
    TResult Function(int index)? removedPhoto,
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
    required TResult Function(_RemovedPhoto value) removedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult? Function(_RemovedPhoto value)? removedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult Function(_RemovedPhoto value)? removedPhoto,
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

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PhotoModel> photos});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$StartedImpl(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(final List<PhotoModel> photos) : _photos = photos;

  final List<PhotoModel> _photos;
  @override
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'UploadPhotosEvent.started(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PhotoModel> photos) started,
    required TResult Function(String adId) pickedImagesFromCamera,
    required TResult Function(String adId) pickedImagesFromGallery,
    required TResult Function(int index) removedPhoto,
  }) {
    return started(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> photos)? started,
    TResult? Function(String adId)? pickedImagesFromCamera,
    TResult? Function(String adId)? pickedImagesFromGallery,
    TResult? Function(int index)? removedPhoto,
  }) {
    return started?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> photos)? started,
    TResult Function(String adId)? pickedImagesFromCamera,
    TResult Function(String adId)? pickedImagesFromGallery,
    TResult Function(int index)? removedPhoto,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(photos);
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
    required TResult Function(_RemovedPhoto value) removedPhoto,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult? Function(_RemovedPhoto value)? removedPhoto,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult Function(_RemovedPhoto value)? removedPhoto,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UploadPhotosEvent {
  const factory _Started(final List<PhotoModel> photos) = _$StartedImpl;

  List<PhotoModel> get photos;

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickedImagesFromCameraImplCopyWith<$Res> {
  factory _$$PickedImagesFromCameraImplCopyWith(
          _$PickedImagesFromCameraImpl value,
          $Res Function(_$PickedImagesFromCameraImpl) then) =
      __$$PickedImagesFromCameraImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String adId});
}

/// @nodoc
class __$$PickedImagesFromCameraImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$PickedImagesFromCameraImpl>
    implements _$$PickedImagesFromCameraImplCopyWith<$Res> {
  __$$PickedImagesFromCameraImplCopyWithImpl(
      _$PickedImagesFromCameraImpl _value,
      $Res Function(_$PickedImagesFromCameraImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = null,
  }) {
    return _then(_$PickedImagesFromCameraImpl(
      null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickedImagesFromCameraImpl implements _PickedImagesFromCamera {
  const _$PickedImagesFromCameraImpl(this.adId);

  @override
  final String adId;

  @override
  String toString() {
    return 'UploadPhotosEvent.pickedImagesFromCamera(adId: $adId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedImagesFromCameraImpl &&
            (identical(other.adId, adId) || other.adId == adId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adId);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickedImagesFromCameraImplCopyWith<_$PickedImagesFromCameraImpl>
      get copyWith => __$$PickedImagesFromCameraImplCopyWithImpl<
          _$PickedImagesFromCameraImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PhotoModel> photos) started,
    required TResult Function(String adId) pickedImagesFromCamera,
    required TResult Function(String adId) pickedImagesFromGallery,
    required TResult Function(int index) removedPhoto,
  }) {
    return pickedImagesFromCamera(adId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> photos)? started,
    TResult? Function(String adId)? pickedImagesFromCamera,
    TResult? Function(String adId)? pickedImagesFromGallery,
    TResult? Function(int index)? removedPhoto,
  }) {
    return pickedImagesFromCamera?.call(adId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> photos)? started,
    TResult Function(String adId)? pickedImagesFromCamera,
    TResult Function(String adId)? pickedImagesFromGallery,
    TResult Function(int index)? removedPhoto,
    required TResult orElse(),
  }) {
    if (pickedImagesFromCamera != null) {
      return pickedImagesFromCamera(adId);
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
    required TResult Function(_RemovedPhoto value) removedPhoto,
  }) {
    return pickedImagesFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult? Function(_RemovedPhoto value)? removedPhoto,
  }) {
    return pickedImagesFromCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult Function(_RemovedPhoto value)? removedPhoto,
    required TResult orElse(),
  }) {
    if (pickedImagesFromCamera != null) {
      return pickedImagesFromCamera(this);
    }
    return orElse();
  }
}

abstract class _PickedImagesFromCamera implements UploadPhotosEvent {
  const factory _PickedImagesFromCamera(final String adId) =
      _$PickedImagesFromCameraImpl;

  String get adId;

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickedImagesFromCameraImplCopyWith<_$PickedImagesFromCameraImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickedImagesFromGalleryImplCopyWith<$Res> {
  factory _$$PickedImagesFromGalleryImplCopyWith(
          _$PickedImagesFromGalleryImpl value,
          $Res Function(_$PickedImagesFromGalleryImpl) then) =
      __$$PickedImagesFromGalleryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String adId});
}

/// @nodoc
class __$$PickedImagesFromGalleryImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$PickedImagesFromGalleryImpl>
    implements _$$PickedImagesFromGalleryImplCopyWith<$Res> {
  __$$PickedImagesFromGalleryImplCopyWithImpl(
      _$PickedImagesFromGalleryImpl _value,
      $Res Function(_$PickedImagesFromGalleryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adId = null,
  }) {
    return _then(_$PickedImagesFromGalleryImpl(
      null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickedImagesFromGalleryImpl implements _PickedImagesFromGallery {
  const _$PickedImagesFromGalleryImpl(this.adId);

  @override
  final String adId;

  @override
  String toString() {
    return 'UploadPhotosEvent.pickedImagesFromGallery(adId: $adId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedImagesFromGalleryImpl &&
            (identical(other.adId, adId) || other.adId == adId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adId);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickedImagesFromGalleryImplCopyWith<_$PickedImagesFromGalleryImpl>
      get copyWith => __$$PickedImagesFromGalleryImplCopyWithImpl<
          _$PickedImagesFromGalleryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PhotoModel> photos) started,
    required TResult Function(String adId) pickedImagesFromCamera,
    required TResult Function(String adId) pickedImagesFromGallery,
    required TResult Function(int index) removedPhoto,
  }) {
    return pickedImagesFromGallery(adId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> photos)? started,
    TResult? Function(String adId)? pickedImagesFromCamera,
    TResult? Function(String adId)? pickedImagesFromGallery,
    TResult? Function(int index)? removedPhoto,
  }) {
    return pickedImagesFromGallery?.call(adId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> photos)? started,
    TResult Function(String adId)? pickedImagesFromCamera,
    TResult Function(String adId)? pickedImagesFromGallery,
    TResult Function(int index)? removedPhoto,
    required TResult orElse(),
  }) {
    if (pickedImagesFromGallery != null) {
      return pickedImagesFromGallery(adId);
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
    required TResult Function(_RemovedPhoto value) removedPhoto,
  }) {
    return pickedImagesFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult? Function(_RemovedPhoto value)? removedPhoto,
  }) {
    return pickedImagesFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult Function(_RemovedPhoto value)? removedPhoto,
    required TResult orElse(),
  }) {
    if (pickedImagesFromGallery != null) {
      return pickedImagesFromGallery(this);
    }
    return orElse();
  }
}

abstract class _PickedImagesFromGallery implements UploadPhotosEvent {
  const factory _PickedImagesFromGallery(final String adId) =
      _$PickedImagesFromGalleryImpl;

  String get adId;

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickedImagesFromGalleryImplCopyWith<_$PickedImagesFromGalleryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedPhotoImplCopyWith<$Res> {
  factory _$$RemovedPhotoImplCopyWith(
          _$RemovedPhotoImpl value, $Res Function(_$RemovedPhotoImpl) then) =
      __$$RemovedPhotoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemovedPhotoImplCopyWithImpl<$Res>
    extends _$UploadPhotosEventCopyWithImpl<$Res, _$RemovedPhotoImpl>
    implements _$$RemovedPhotoImplCopyWith<$Res> {
  __$$RemovedPhotoImplCopyWithImpl(
      _$RemovedPhotoImpl _value, $Res Function(_$RemovedPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemovedPhotoImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemovedPhotoImpl implements _RemovedPhoto {
  const _$RemovedPhotoImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'UploadPhotosEvent.removedPhoto(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovedPhotoImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedPhotoImplCopyWith<_$RemovedPhotoImpl> get copyWith =>
      __$$RemovedPhotoImplCopyWithImpl<_$RemovedPhotoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PhotoModel> photos) started,
    required TResult Function(String adId) pickedImagesFromCamera,
    required TResult Function(String adId) pickedImagesFromGallery,
    required TResult Function(int index) removedPhoto,
  }) {
    return removedPhoto(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PhotoModel> photos)? started,
    TResult? Function(String adId)? pickedImagesFromCamera,
    TResult? Function(String adId)? pickedImagesFromGallery,
    TResult? Function(int index)? removedPhoto,
  }) {
    return removedPhoto?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PhotoModel> photos)? started,
    TResult Function(String adId)? pickedImagesFromCamera,
    TResult Function(String adId)? pickedImagesFromGallery,
    TResult Function(int index)? removedPhoto,
    required TResult orElse(),
  }) {
    if (removedPhoto != null) {
      return removedPhoto(index);
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
    required TResult Function(_RemovedPhoto value) removedPhoto,
  }) {
    return removedPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult? Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult? Function(_RemovedPhoto value)? removedPhoto,
  }) {
    return removedPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PickedImagesFromCamera value)? pickedImagesFromCamera,
    TResult Function(_PickedImagesFromGallery value)? pickedImagesFromGallery,
    TResult Function(_RemovedPhoto value)? removedPhoto,
    required TResult orElse(),
  }) {
    if (removedPhoto != null) {
      return removedPhoto(this);
    }
    return orElse();
  }
}

abstract class _RemovedPhoto implements UploadPhotosEvent {
  const factory _RemovedPhoto(final int index) = _$RemovedPhotoImpl;

  int get index;

  /// Create a copy of UploadPhotosEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemovedPhotoImplCopyWith<_$RemovedPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadPhotosState {
  CommonStatus get status => throw _privateConstructorUsedError;
  List<PhotoModel> get photos => throw _privateConstructorUsedError;

  /// Create a copy of UploadPhotosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadPhotosStateCopyWith<UploadPhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPhotosStateCopyWith<$Res> {
  factory $UploadPhotosStateCopyWith(
          UploadPhotosState value, $Res Function(UploadPhotosState) then) =
      _$UploadPhotosStateCopyWithImpl<$Res, UploadPhotosState>;
  @useResult
  $Res call({CommonStatus status, List<PhotoModel> photos});
}

/// @nodoc
class _$UploadPhotosStateCopyWithImpl<$Res, $Val extends UploadPhotosState>
    implements $UploadPhotosStateCopyWith<$Res> {
  _$UploadPhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadPhotosState
  /// with the given fields replaced by the non-null parameter values.
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
              as CommonStatus,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
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
  $Res call({CommonStatus status, List<PhotoModel> photos});
}

/// @nodoc
class __$$UploadPhotosStateImplCopyWithImpl<$Res>
    extends _$UploadPhotosStateCopyWithImpl<$Res, _$UploadPhotosStateImpl>
    implements _$$UploadPhotosStateImplCopyWith<$Res> {
  __$$UploadPhotosStateImplCopyWithImpl(_$UploadPhotosStateImpl _value,
      $Res Function(_$UploadPhotosStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadPhotosState
  /// with the given fields replaced by the non-null parameter values.
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
              as CommonStatus,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ));
  }
}

/// @nodoc

class _$UploadPhotosStateImpl implements _UploadPhotosState {
  const _$UploadPhotosStateImpl(
      {this.status = CommonStatus.initial,
      final List<PhotoModel> photos = const []})
      : _photos = photos;

  @override
  @JsonKey()
  final CommonStatus status;
  final List<PhotoModel> _photos;
  @override
  @JsonKey()
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'UploadPhotosState(status: $status, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPhotosStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of UploadPhotosState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPhotosStateImplCopyWith<_$UploadPhotosStateImpl> get copyWith =>
      __$$UploadPhotosStateImplCopyWithImpl<_$UploadPhotosStateImpl>(
          this, _$identity);
}

abstract class _UploadPhotosState implements UploadPhotosState {
  const factory _UploadPhotosState(
      {final CommonStatus status,
      final List<PhotoModel> photos}) = _$UploadPhotosStateImpl;

  @override
  CommonStatus get status;
  @override
  List<PhotoModel> get photos;

  /// Create a copy of UploadPhotosState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadPhotosStateImplCopyWith<_$UploadPhotosStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
