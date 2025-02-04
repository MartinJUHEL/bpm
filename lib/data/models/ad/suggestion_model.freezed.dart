// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuggestionModel _$SuggestionModelFromJson(Map<String, dynamic> json) {
  return _SuggestionModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestionModel {
  String get title => throw _privateConstructorUsedError;

  /// Serializes this SuggestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuggestionModelCopyWith<SuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionModelCopyWith<$Res> {
  factory $SuggestionModelCopyWith(
          SuggestionModel value, $Res Function(SuggestionModel) then) =
      _$SuggestionModelCopyWithImpl<$Res, SuggestionModel>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$SuggestionModelCopyWithImpl<$Res, $Val extends SuggestionModel>
    implements $SuggestionModelCopyWith<$Res> {
  _$SuggestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestionModelImplCopyWith<$Res>
    implements $SuggestionModelCopyWith<$Res> {
  factory _$$SuggestionModelImplCopyWith(_$SuggestionModelImpl value,
          $Res Function(_$SuggestionModelImpl) then) =
      __$$SuggestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$SuggestionModelImplCopyWithImpl<$Res>
    extends _$SuggestionModelCopyWithImpl<$Res, _$SuggestionModelImpl>
    implements _$$SuggestionModelImplCopyWith<$Res> {
  __$$SuggestionModelImplCopyWithImpl(
      _$SuggestionModelImpl _value, $Res Function(_$SuggestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$SuggestionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestionModelImpl implements _SuggestionModel {
  const _$SuggestionModelImpl({required this.title});

  factory _$SuggestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestionModelImplFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'SuggestionModel(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionModelImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of SuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionModelImplCopyWith<_$SuggestionModelImpl> get copyWith =>
      __$$SuggestionModelImplCopyWithImpl<_$SuggestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestionModelImplToJson(
      this,
    );
  }
}

abstract class _SuggestionModel implements SuggestionModel {
  const factory _SuggestionModel({required final String title}) =
      _$SuggestionModelImpl;

  factory _SuggestionModel.fromJson(Map<String, dynamic> json) =
      _$SuggestionModelImpl.fromJson;

  @override
  String get title;

  /// Create a copy of SuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuggestionModelImplCopyWith<_$SuggestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
