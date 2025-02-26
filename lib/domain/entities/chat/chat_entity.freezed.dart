// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEntity {
  String get id => throw _privateConstructorUsedError;
  String get adId => throw _privateConstructorUsedError;
  String get adTitle => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  DateTime get lastMessageTimestamp => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
          ChatEntity value, $Res Function(ChatEntity) then) =
      _$ChatEntityCopyWithImpl<$Res, ChatEntity>;
  @useResult
  $Res call(
      {String id,
      String adId,
      String adTitle,
      String lastMessage,
      DateTime lastMessageTimestamp,
      String photoUrl,
      List<String> participants});
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res, $Val extends ChatEntity>
    implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adId = null,
    Object? adTitle = null,
    Object? lastMessage = null,
    Object? lastMessageTimestamp = null,
    Object? photoUrl = null,
    Object? participants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      adId: null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
      adTitle: null == adTitle
          ? _value.adTitle
          : adTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTimestamp: null == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatEntityImplCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$ChatEntityImplCopyWith(
          _$ChatEntityImpl value, $Res Function(_$ChatEntityImpl) then) =
      __$$ChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String adId,
      String adTitle,
      String lastMessage,
      DateTime lastMessageTimestamp,
      String photoUrl,
      List<String> participants});
}

/// @nodoc
class __$$ChatEntityImplCopyWithImpl<$Res>
    extends _$ChatEntityCopyWithImpl<$Res, _$ChatEntityImpl>
    implements _$$ChatEntityImplCopyWith<$Res> {
  __$$ChatEntityImplCopyWithImpl(
      _$ChatEntityImpl _value, $Res Function(_$ChatEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adId = null,
    Object? adTitle = null,
    Object? lastMessage = null,
    Object? lastMessageTimestamp = null,
    Object? photoUrl = null,
    Object? participants = null,
  }) {
    return _then(_$ChatEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      adId: null == adId
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as String,
      adTitle: null == adTitle
          ? _value.adTitle
          : adTitle // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTimestamp: null == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ChatEntityImpl extends _ChatEntity {
  const _$ChatEntityImpl(
      {required this.id,
      required this.adId,
      required this.adTitle,
      required this.lastMessage,
      required this.lastMessageTimestamp,
      required this.photoUrl,
      required final List<String> participants})
      : _participants = participants,
        super._();

  @override
  final String id;
  @override
  final String adId;
  @override
  final String adTitle;
  @override
  final String lastMessage;
  @override
  final DateTime lastMessageTimestamp;
  @override
  final String photoUrl;
  final List<String> _participants;
  @override
  List<String> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'ChatEntity(id: $id, adId: $adId, adTitle: $adTitle, lastMessage: $lastMessage, lastMessageTimestamp: $lastMessageTimestamp, photoUrl: $photoUrl, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adId, adId) || other.adId == adId) &&
            (identical(other.adTitle, adTitle) || other.adTitle == adTitle) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                other.lastMessageTimestamp == lastMessageTimestamp) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      adId,
      adTitle,
      lastMessage,
      lastMessageTimestamp,
      photoUrl,
      const DeepCollectionEquality().hash(_participants));

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      __$$ChatEntityImplCopyWithImpl<_$ChatEntityImpl>(this, _$identity);
}

abstract class _ChatEntity extends ChatEntity {
  const factory _ChatEntity(
      {required final String id,
      required final String adId,
      required final String adTitle,
      required final String lastMessage,
      required final DateTime lastMessageTimestamp,
      required final String photoUrl,
      required final List<String> participants}) = _$ChatEntityImpl;
  const _ChatEntity._() : super._();

  @override
  String get id;
  @override
  String get adId;
  @override
  String get adTitle;
  @override
  String get lastMessage;
  @override
  DateTime get lastMessageTimestamp;
  @override
  String get photoUrl;
  @override
  List<String> get participants;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
