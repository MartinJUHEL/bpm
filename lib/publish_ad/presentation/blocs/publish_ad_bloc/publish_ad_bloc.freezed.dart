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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PublishAdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishAdEventCopyWith<$Res> {
  factory $PublishAdEventCopyWith(
          PublishAdEvent value, $Res Function(PublishAdEvent) then) =
      _$PublishAdEventCopyWithImpl<$Res, PublishAdEvent>;
}

/// @nodoc
class _$PublishAdEventCopyWithImpl<$Res, $Val extends PublishAdEvent>
    implements $PublishAdEventCopyWith<$Res> {
  _$PublishAdEventCopyWithImpl(this._value, this._then);

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
    extends _$PublishAdEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PublishAdEvent.started()';
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
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
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
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PublishAdEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MovedToNextPageImplCopyWith<$Res> {
  factory _$$MovedToNextPageImplCopyWith(_$MovedToNextPageImpl value,
          $Res Function(_$MovedToNextPageImpl) then) =
      __$$MovedToNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovedToNextPageImplCopyWithImpl<$Res>
    extends _$PublishAdEventCopyWithImpl<$Res, _$MovedToNextPageImpl>
    implements _$$MovedToNextPageImplCopyWith<$Res> {
  __$$MovedToNextPageImplCopyWithImpl(
      _$MovedToNextPageImpl _value, $Res Function(_$MovedToNextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovedToNextPageImpl implements _MovedToNextPage {
  const _$MovedToNextPageImpl();

  @override
  String toString() {
    return 'PublishAdEvent.movedToNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovedToNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return movedToNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return movedToNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) {
    if (movedToNextPage != null) {
      return movedToNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return movedToNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return movedToNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (movedToNextPage != null) {
      return movedToNextPage(this);
    }
    return orElse();
  }
}

abstract class _MovedToNextPage implements PublishAdEvent {
  const factory _MovedToNextPage() = _$MovedToNextPageImpl;
}

/// @nodoc
abstract class _$$MovedToPreviousPageImplCopyWith<$Res> {
  factory _$$MovedToPreviousPageImplCopyWith(_$MovedToPreviousPageImpl value,
          $Res Function(_$MovedToPreviousPageImpl) then) =
      __$$MovedToPreviousPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovedToPreviousPageImplCopyWithImpl<$Res>
    extends _$PublishAdEventCopyWithImpl<$Res, _$MovedToPreviousPageImpl>
    implements _$$MovedToPreviousPageImplCopyWith<$Res> {
  __$$MovedToPreviousPageImplCopyWithImpl(_$MovedToPreviousPageImpl _value,
      $Res Function(_$MovedToPreviousPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovedToPreviousPageImpl implements _MovedToPreviousPage {
  const _$MovedToPreviousPageImpl();

  @override
  String toString() {
    return 'PublishAdEvent.movedToPreviousPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovedToPreviousPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return movedToPreviousPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return movedToPreviousPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) {
    if (movedToPreviousPage != null) {
      return movedToPreviousPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return movedToPreviousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return movedToPreviousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (movedToPreviousPage != null) {
      return movedToPreviousPage(this);
    }
    return orElse();
  }
}

abstract class _MovedToPreviousPage implements PublishAdEvent {
  const factory _MovedToPreviousPage() = _$MovedToPreviousPageImpl;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$PublishAdEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'PublishAdEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements PublishAdEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$PublishAdEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'PublishAdEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements PublishAdEvent {
  const factory _DescriptionChanged(final String description) =
      _$DescriptionChangedImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedPhotosImplCopyWith<$Res> {
  factory _$$SavedPhotosImplCopyWith(
          _$SavedPhotosImpl value, $Res Function(_$SavedPhotosImpl) then) =
      __$$SavedPhotosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PhotoModel> photos});
}

/// @nodoc
class __$$SavedPhotosImplCopyWithImpl<$Res>
    extends _$PublishAdEventCopyWithImpl<$Res, _$SavedPhotosImpl>
    implements _$$SavedPhotosImplCopyWith<$Res> {
  __$$SavedPhotosImplCopyWithImpl(
      _$SavedPhotosImpl _value, $Res Function(_$SavedPhotosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$SavedPhotosImpl(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
    ));
  }
}

/// @nodoc

class _$SavedPhotosImpl implements _SavedPhotos {
  const _$SavedPhotosImpl(final List<PhotoModel> photos) : _photos = photos;

  final List<PhotoModel> _photos;
  @override
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PublishAdEvent.savedPhotos(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedPhotosImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedPhotosImplCopyWith<_$SavedPhotosImpl> get copyWith =>
      __$$SavedPhotosImplCopyWithImpl<_$SavedPhotosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return savedPhotos(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return savedPhotos?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) {
    if (savedPhotos != null) {
      return savedPhotos(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return savedPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return savedPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (savedPhotos != null) {
      return savedPhotos(this);
    }
    return orElse();
  }
}

abstract class _SavedPhotos implements PublishAdEvent {
  const factory _SavedPhotos(final List<PhotoModel> photos) = _$SavedPhotosImpl;

  List<PhotoModel> get photos;
  @JsonKey(ignore: true)
  _$$SavedPhotosImplCopyWith<_$SavedPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CitySavedImplCopyWith<$Res> {
  factory _$$CitySavedImplCopyWith(
          _$CitySavedImpl value, $Res Function(_$CitySavedImpl) then) =
      __$$CitySavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$CitySavedImplCopyWithImpl<$Res>
    extends _$PublishAdEventCopyWithImpl<$Res, _$CitySavedImpl>
    implements _$$CitySavedImplCopyWith<$Res> {
  __$$CitySavedImplCopyWithImpl(
      _$CitySavedImpl _value, $Res Function(_$CitySavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$CitySavedImpl(
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CitySavedImpl implements _CitySaved {
  const _$CitySavedImpl(this.city);

  @override
  final String city;

  @override
  String toString() {
    return 'PublishAdEvent.citySaved(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitySavedImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitySavedImplCopyWith<_$CitySavedImpl> get copyWith =>
      __$$CitySavedImplCopyWithImpl<_$CitySavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() movedToNextPage,
    required TResult Function() movedToPreviousPage,
    required TResult Function(String title) titleChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(List<PhotoModel> photos) savedPhotos,
    required TResult Function(String city) citySaved,
  }) {
    return citySaved(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? movedToNextPage,
    TResult? Function()? movedToPreviousPage,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String description)? descriptionChanged,
    TResult? Function(List<PhotoModel> photos)? savedPhotos,
    TResult? Function(String city)? citySaved,
  }) {
    return citySaved?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? movedToNextPage,
    TResult Function()? movedToPreviousPage,
    TResult Function(String title)? titleChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(List<PhotoModel> photos)? savedPhotos,
    TResult Function(String city)? citySaved,
    required TResult orElse(),
  }) {
    if (citySaved != null) {
      return citySaved(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovedToNextPage value) movedToNextPage,
    required TResult Function(_MovedToPreviousPage value) movedToPreviousPage,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_SavedPhotos value) savedPhotos,
    required TResult Function(_CitySaved value) citySaved,
  }) {
    return citySaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovedToNextPage value)? movedToNextPage,
    TResult? Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_SavedPhotos value)? savedPhotos,
    TResult? Function(_CitySaved value)? citySaved,
  }) {
    return citySaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovedToNextPage value)? movedToNextPage,
    TResult Function(_MovedToPreviousPage value)? movedToPreviousPage,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_SavedPhotos value)? savedPhotos,
    TResult Function(_CitySaved value)? citySaved,
    required TResult orElse(),
  }) {
    if (citySaved != null) {
      return citySaved(this);
    }
    return orElse();
  }
}

abstract class _CitySaved implements PublishAdEvent {
  const factory _CitySaved(final String city) = _$CitySavedImpl;

  String get city;
  @JsonKey(ignore: true)
  _$$CitySavedImplCopyWith<_$CitySavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PublishAdState {
  PublishAdStatus get status => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isTitleValid => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDescriptionValid => throw _privateConstructorUsedError;
  List<PhotoModel> get photos => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {PublishAdStatus status,
      int pageIndex,
      String title,
      bool isTitleValid,
      String description,
      bool isDescriptionValid,
      List<PhotoModel> photos,
      String city,
      double lat,
      double long});
}

/// @nodoc
class _$PublishAdStateCopyWithImpl<$Res, $Val extends PublishAdState>
    implements $PublishAdStateCopyWith<$Res> {
  _$PublishAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pageIndex = null,
    Object? title = null,
    Object? isTitleValid = null,
    Object? description = null,
    Object? isDescriptionValid = null,
    Object? photos = null,
    Object? city = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PublishAdStatus,
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
      isDescriptionValid: null == isDescriptionValid
          ? _value.isDescriptionValid
          : isDescriptionValid // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
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
      {PublishAdStatus status,
      int pageIndex,
      String title,
      bool isTitleValid,
      String description,
      bool isDescriptionValid,
      List<PhotoModel> photos,
      String city,
      double lat,
      double long});
}

/// @nodoc
class __$$PublishAdStateImplCopyWithImpl<$Res>
    extends _$PublishAdStateCopyWithImpl<$Res, _$PublishAdStateImpl>
    implements _$$PublishAdStateImplCopyWith<$Res> {
  __$$PublishAdStateImplCopyWithImpl(
      _$PublishAdStateImpl _value, $Res Function(_$PublishAdStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pageIndex = null,
    Object? title = null,
    Object? isTitleValid = null,
    Object? description = null,
    Object? isDescriptionValid = null,
    Object? photos = null,
    Object? city = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$PublishAdStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PublishAdStatus,
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
      isDescriptionValid: null == isDescriptionValid
          ? _value.isDescriptionValid
          : isDescriptionValid // ignore: cast_nullable_to_non_nullable
              as bool,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoModel>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PublishAdStateImpl implements _PublishAdState {
  const _$PublishAdStateImpl(
      {this.status = PublishAdStatus.initial,
      this.pageIndex = 0,
      this.title = '',
      this.isTitleValid = false,
      this.description = '',
      this.isDescriptionValid = false,
      final List<PhotoModel> photos = const [],
      this.city = '',
      this.lat = 0,
      this.long = 0})
      : _photos = photos;

  @override
  @JsonKey()
  final PublishAdStatus status;
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
  @JsonKey()
  final bool isDescriptionValid;
  final List<PhotoModel> _photos;
  @override
  @JsonKey()
  List<PhotoModel> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double long;

  @override
  String toString() {
    return 'PublishAdState(status: $status, pageIndex: $pageIndex, title: $title, isTitleValid: $isTitleValid, description: $description, isDescriptionValid: $isDescriptionValid, photos: $photos, city: $city, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublishAdStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isTitleValid, isTitleValid) ||
                other.isTitleValid == isTitleValid) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDescriptionValid, isDescriptionValid) ||
                other.isDescriptionValid == isDescriptionValid) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      pageIndex,
      title,
      isTitleValid,
      description,
      isDescriptionValid,
      const DeepCollectionEquality().hash(_photos),
      city,
      lat,
      long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublishAdStateImplCopyWith<_$PublishAdStateImpl> get copyWith =>
      __$$PublishAdStateImplCopyWithImpl<_$PublishAdStateImpl>(
          this, _$identity);
}

abstract class _PublishAdState implements PublishAdState {
  const factory _PublishAdState(
      {final PublishAdStatus status,
      final int pageIndex,
      final String title,
      final bool isTitleValid,
      final String description,
      final bool isDescriptionValid,
      final List<PhotoModel> photos,
      final String city,
      final double lat,
      final double long}) = _$PublishAdStateImpl;

  @override
  PublishAdStatus get status;
  @override
  int get pageIndex;
  @override
  String get title;
  @override
  bool get isTitleValid;
  @override
  String get description;
  @override
  bool get isDescriptionValid;
  @override
  List<PhotoModel> get photos;
  @override
  String get city;
  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$$PublishAdStateImplCopyWith<_$PublishAdStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
