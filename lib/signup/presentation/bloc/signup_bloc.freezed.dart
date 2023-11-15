// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignupEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignupEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignupEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignupEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignupEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignupEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl();

  @override
  String toString() {
    return 'SignupEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SignupEvent {
  const factory _Submitted() = _$SubmittedImpl;
}

/// @nodoc
abstract class _$$ObscurePasswordToggledImplCopyWith<$Res> {
  factory _$$ObscurePasswordToggledImplCopyWith(
          _$ObscurePasswordToggledImpl value,
          $Res Function(_$ObscurePasswordToggledImpl) then) =
      __$$ObscurePasswordToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObscurePasswordToggledImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$ObscurePasswordToggledImpl>
    implements _$$ObscurePasswordToggledImplCopyWith<$Res> {
  __$$ObscurePasswordToggledImplCopyWithImpl(
      _$ObscurePasswordToggledImpl _value,
      $Res Function(_$ObscurePasswordToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObscurePasswordToggledImpl implements _ObscurePasswordToggled {
  const _$ObscurePasswordToggledImpl();

  @override
  String toString() {
    return 'SignupEvent.obscurePasswordToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObscurePasswordToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return obscurePasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return obscurePasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (obscurePasswordToggled != null) {
      return obscurePasswordToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return obscurePasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return obscurePasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (obscurePasswordToggled != null) {
      return obscurePasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscurePasswordToggled implements SignupEvent {
  const factory _ObscurePasswordToggled() = _$ObscurePasswordToggledImpl;
}

/// @nodoc
abstract class _$$FormTypeToggledImplCopyWith<$Res> {
  factory _$$FormTypeToggledImplCopyWith(_$FormTypeToggledImpl value,
          $Res Function(_$FormTypeToggledImpl) then) =
      __$$FormTypeToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormType form});
}

/// @nodoc
class __$$FormTypeToggledImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$FormTypeToggledImpl>
    implements _$$FormTypeToggledImplCopyWith<$Res> {
  __$$FormTypeToggledImplCopyWithImpl(
      _$FormTypeToggledImpl _value, $Res Function(_$FormTypeToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$FormTypeToggledImpl(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormType,
    ));
  }
}

/// @nodoc

class _$FormTypeToggledImpl implements _FormTypeToggled {
  const _$FormTypeToggledImpl(this.form);

  @override
  final FormType form;

  @override
  String toString() {
    return 'SignupEvent.formTypeToggled(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTypeToggledImpl &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormTypeToggledImplCopyWith<_$FormTypeToggledImpl> get copyWith =>
      __$$FormTypeToggledImplCopyWithImpl<_$FormTypeToggledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return formTypeToggled(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return formTypeToggled?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (formTypeToggled != null) {
      return formTypeToggled(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return formTypeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return formTypeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (formTypeToggled != null) {
      return formTypeToggled(this);
    }
    return orElse();
  }
}

abstract class _FormTypeToggled implements SignupEvent {
  const factory _FormTypeToggled(final FormType form) = _$FormTypeToggledImpl;

  FormType get form;
  @JsonKey(ignore: true)
  _$$FormTypeToggledImplCopyWith<_$FormTypeToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SucceededImplCopyWith<$Res> {
  factory _$$SucceededImplCopyWith(
          _$SucceededImpl value, $Res Function(_$SucceededImpl) then) =
      __$$SucceededImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SucceededImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SucceededImpl>
    implements _$$SucceededImplCopyWith<$Res> {
  __$$SucceededImplCopyWithImpl(
      _$SucceededImpl _value, $Res Function(_$SucceededImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SucceededImpl implements _Succeeded {
  const _$SucceededImpl();

  @override
  String toString() {
    return 'SignupEvent.succeeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SucceededImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
    required TResult Function() obscurePasswordToggled,
    required TResult Function(FormType form) formTypeToggled,
    required TResult Function() succeeded,
  }) {
    return succeeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function(FormType form)? formTypeToggled,
    TResult? Function()? succeeded,
  }) {
    return succeeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    TResult Function()? obscurePasswordToggled,
    TResult Function(FormType form)? formTypeToggled,
    TResult Function()? succeeded,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_FormTypeToggled value) formTypeToggled,
    required TResult Function(_Succeeded value) succeeded,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_FormTypeToggled value)? formTypeToggled,
    TResult? Function(_Succeeded value)? succeeded,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_FormTypeToggled value)? formTypeToggled,
    TResult Function(_Succeeded value)? succeeded,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded implements SignupEvent {
  const factory _Succeeded() = _$SucceededImpl;
}

/// @nodoc
mixin _$SignupState {
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  FormType? get formType => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isFormSuccessful => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  bool get isNameValid => throw _privateConstructorUsedError;
  bool get isFormValidateFailed => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {String email,
      String displayName,
      String password,
      String? errorMessage,
      FormType? formType,
      bool showError,
      bool isFormSuccessful,
      bool obscurePassword,
      bool isEmailValid,
      bool isPasswordValid,
      bool isFormValid,
      bool isNameValid,
      bool isFormValidateFailed,
      bool isLoading});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? password = null,
    Object? errorMessage = freezed,
    Object? formType = freezed,
    Object? showError = null,
    Object? isFormSuccessful = null,
    Object? obscurePassword = null,
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? isFormValid = null,
    Object? isNameValid = null,
    Object? isFormValidateFailed = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      formType: freezed == formType
          ? _value.formType
          : formType // ignore: cast_nullable_to_non_nullable
              as FormType?,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormSuccessful: null == isFormSuccessful
          ? _value.isFormSuccessful
          : isFormSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValid: null == isNameValid
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValidateFailed: null == isFormValidateFailed
          ? _value.isFormValidateFailed
          : isFormValidateFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateImplCopyWith(
          _$SignupStateImpl value, $Res Function(_$SignupStateImpl) then) =
      __$$SignupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String displayName,
      String password,
      String? errorMessage,
      FormType? formType,
      bool showError,
      bool isFormSuccessful,
      bool obscurePassword,
      bool isEmailValid,
      bool isPasswordValid,
      bool isFormValid,
      bool isNameValid,
      bool isFormValidateFailed,
      bool isLoading});
}

/// @nodoc
class __$$SignupStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateImpl>
    implements _$$SignupStateImplCopyWith<$Res> {
  __$$SignupStateImplCopyWithImpl(
      _$SignupStateImpl _value, $Res Function(_$SignupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? password = null,
    Object? errorMessage = freezed,
    Object? formType = freezed,
    Object? showError = null,
    Object? isFormSuccessful = null,
    Object? obscurePassword = null,
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? isFormValid = null,
    Object? isNameValid = null,
    Object? isFormValidateFailed = null,
    Object? isLoading = null,
  }) {
    return _then(_$SignupStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      formType: freezed == formType
          ? _value.formType
          : formType // ignore: cast_nullable_to_non_nullable
              as FormType?,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormSuccessful: null == isFormSuccessful
          ? _value.isFormSuccessful
          : isFormSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValid: null == isNameValid
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormValidateFailed: null == isFormValidateFailed
          ? _value.isFormValidateFailed
          : isFormValidateFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignupStateImpl implements _SignupState {
  const _$SignupStateImpl(
      {required this.email,
      required this.displayName,
      required this.password,
      this.errorMessage = '',
      this.formType = FormType.signUp,
      this.showError = false,
      this.isFormSuccessful = false,
      this.obscurePassword = true,
      this.isEmailValid = true,
      this.isPasswordValid = true,
      this.isFormValid = false,
      this.isNameValid = true,
      this.isFormValidateFailed = false,
      this.isLoading = false});

  @override
  final String email;
  @override
  final String displayName;
  @override
  final String password;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final FormType? formType;
  @override
  @JsonKey()
  final bool showError;
  @override
  @JsonKey()
  final bool isFormSuccessful;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final bool isEmailValid;
  @override
  @JsonKey()
  final bool isPasswordValid;
  @override
  @JsonKey()
  final bool isFormValid;
  @override
  @JsonKey()
  final bool isNameValid;
  @override
  @JsonKey()
  final bool isFormValidateFailed;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SignupState(email: $email, displayName: $displayName, password: $password, errorMessage: $errorMessage, formType: $formType, showError: $showError, isFormSuccessful: $isFormSuccessful, obscurePassword: $obscurePassword, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isFormValid: $isFormValid, isNameValid: $isNameValid, isFormValidateFailed: $isFormValidateFailed, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.formType, formType) ||
                other.formType == formType) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.isFormSuccessful, isFormSuccessful) ||
                other.isFormSuccessful == isFormSuccessful) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.isNameValid, isNameValid) ||
                other.isNameValid == isNameValid) &&
            (identical(other.isFormValidateFailed, isFormValidateFailed) ||
                other.isFormValidateFailed == isFormValidateFailed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      displayName,
      password,
      errorMessage,
      formType,
      showError,
      isFormSuccessful,
      obscurePassword,
      isEmailValid,
      isPasswordValid,
      isFormValid,
      isNameValid,
      isFormValidateFailed,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      __$$SignupStateImplCopyWithImpl<_$SignupStateImpl>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final String email,
      required final String displayName,
      required final String password,
      final String? errorMessage,
      final FormType? formType,
      final bool showError,
      final bool isFormSuccessful,
      final bool obscurePassword,
      final bool isEmailValid,
      final bool isPasswordValid,
      final bool isFormValid,
      final bool isNameValid,
      final bool isFormValidateFailed,
      final bool isLoading}) = _$SignupStateImpl;

  @override
  String get email;
  @override
  String get displayName;
  @override
  String get password;
  @override
  String? get errorMessage;
  @override
  FormType? get formType;
  @override
  bool get showError;
  @override
  bool get isFormSuccessful;
  @override
  bool get obscurePassword;
  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isFormValid;
  @override
  bool get isNameValid;
  @override
  bool get isFormValidateFailed;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
