// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_error_trigger_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenericErrorTriggerState {
  ErrorType? get errorType => throw _privateConstructorUsedError;

  /// Create a copy of GenericErrorTriggerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericErrorTriggerStateCopyWith<GenericErrorTriggerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericErrorTriggerStateCopyWith<$Res> {
  factory $GenericErrorTriggerStateCopyWith(GenericErrorTriggerState value,
          $Res Function(GenericErrorTriggerState) then) =
      _$GenericErrorTriggerStateCopyWithImpl<$Res, GenericErrorTriggerState>;
  @useResult
  $Res call({ErrorType? errorType});
}

/// @nodoc
class _$GenericErrorTriggerStateCopyWithImpl<$Res,
        $Val extends GenericErrorTriggerState>
    implements $GenericErrorTriggerStateCopyWith<$Res> {
  _$GenericErrorTriggerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericErrorTriggerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = freezed,
  }) {
    return _then(_value.copyWith(
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericErrorTriggerStateImplCopyWith<$Res>
    implements $GenericErrorTriggerStateCopyWith<$Res> {
  factory _$$GenericErrorTriggerStateImplCopyWith(
          _$GenericErrorTriggerStateImpl value,
          $Res Function(_$GenericErrorTriggerStateImpl) then) =
      __$$GenericErrorTriggerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorType? errorType});
}

/// @nodoc
class __$$GenericErrorTriggerStateImplCopyWithImpl<$Res>
    extends _$GenericErrorTriggerStateCopyWithImpl<$Res,
        _$GenericErrorTriggerStateImpl>
    implements _$$GenericErrorTriggerStateImplCopyWith<$Res> {
  __$$GenericErrorTriggerStateImplCopyWithImpl(
      _$GenericErrorTriggerStateImpl _value,
      $Res Function(_$GenericErrorTriggerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenericErrorTriggerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = freezed,
  }) {
    return _then(_$GenericErrorTriggerStateImpl(
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType?,
    ));
  }
}

/// @nodoc

class _$GenericErrorTriggerStateImpl implements _GenericErrorTriggerState {
  const _$GenericErrorTriggerStateImpl({this.errorType});

  @override
  final ErrorType? errorType;

  @override
  String toString() {
    return 'GenericErrorTriggerState(errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericErrorTriggerStateImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorType);

  /// Create a copy of GenericErrorTriggerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericErrorTriggerStateImplCopyWith<_$GenericErrorTriggerStateImpl>
      get copyWith => __$$GenericErrorTriggerStateImplCopyWithImpl<
          _$GenericErrorTriggerStateImpl>(this, _$identity);
}

abstract class _GenericErrorTriggerState implements GenericErrorTriggerState {
  const factory _GenericErrorTriggerState({final ErrorType? errorType}) =
      _$GenericErrorTriggerStateImpl;

  @override
  ErrorType? get errorType;

  /// Create a copy of GenericErrorTriggerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericErrorTriggerStateImplCopyWith<_$GenericErrorTriggerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
