// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get id => throw _privateConstructorUsedError;
  String get adId => throw _privateConstructorUsedError;
  String get adTitle => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampToDateTime)
  DateTime get lastMessageTimestamp => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get renterId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: timestampToDateTime)
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get lastMessageRead => throw _privateConstructorUsedError;
  String get renterName => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String id,
      String adId,
      String adTitle,
      String lastMessage,
      String photoUrl,
      @JsonKey(fromJson: timestampToDateTime) DateTime lastMessageTimestamp,
      String senderId,
      String renterId,
      @JsonKey(fromJson: timestampToDateTime) DateTime createdAt,
      bool lastMessageRead,
      String renterName,
      String senderName});
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adId = null,
    Object? adTitle = null,
    Object? lastMessage = null,
    Object? photoUrl = null,
    Object? lastMessageTimestamp = null,
    Object? senderId = null,
    Object? renterId = null,
    Object? createdAt = null,
    Object? lastMessageRead = null,
    Object? renterName = null,
    Object? senderName = null,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTimestamp: null == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      renterId: null == renterId
          ? _value.renterId
          : renterId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessageRead: null == lastMessageRead
          ? _value.lastMessageRead
          : lastMessageRead // ignore: cast_nullable_to_non_nullable
              as bool,
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String adId,
      String adTitle,
      String lastMessage,
      String photoUrl,
      @JsonKey(fromJson: timestampToDateTime) DateTime lastMessageTimestamp,
      String senderId,
      String renterId,
      @JsonKey(fromJson: timestampToDateTime) DateTime createdAt,
      bool lastMessageRead,
      String renterName,
      String senderName});
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adId = null,
    Object? adTitle = null,
    Object? lastMessage = null,
    Object? photoUrl = null,
    Object? lastMessageTimestamp = null,
    Object? senderId = null,
    Object? renterId = null,
    Object? createdAt = null,
    Object? lastMessageRead = null,
    Object? renterName = null,
    Object? senderName = null,
  }) {
    return _then(_$ChatModelImpl(
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageTimestamp: null == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      renterId: null == renterId
          ? _value.renterId
          : renterId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessageRead: null == lastMessageRead
          ? _value.lastMessageRead
          : lastMessageRead // ignore: cast_nullable_to_non_nullable
              as bool,
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl extends _ChatModel {
  const _$ChatModelImpl(
      {required this.id,
      required this.adId,
      required this.adTitle,
      required this.lastMessage,
      required this.photoUrl,
      @JsonKey(fromJson: timestampToDateTime)
      required this.lastMessageTimestamp,
      required this.senderId,
      required this.renterId,
      @JsonKey(fromJson: timestampToDateTime) required this.createdAt,
      required this.lastMessageRead,
      required this.renterName,
      required this.senderName})
      : super._();

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final String id;
  @override
  final String adId;
  @override
  final String adTitle;
  @override
  final String lastMessage;
  @override
  final String photoUrl;
  @override
  @JsonKey(fromJson: timestampToDateTime)
  final DateTime lastMessageTimestamp;
  @override
  final String senderId;
  @override
  final String renterId;
  @override
  @JsonKey(fromJson: timestampToDateTime)
  final DateTime createdAt;
  @override
  final bool lastMessageRead;
  @override
  final String renterName;
  @override
  final String senderName;

  @override
  String toString() {
    return 'ChatModel(id: $id, adId: $adId, adTitle: $adTitle, lastMessage: $lastMessage, photoUrl: $photoUrl, lastMessageTimestamp: $lastMessageTimestamp, senderId: $senderId, renterId: $renterId, createdAt: $createdAt, lastMessageRead: $lastMessageRead, renterName: $renterName, senderName: $senderName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adId, adId) || other.adId == adId) &&
            (identical(other.adTitle, adTitle) || other.adTitle == adTitle) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                other.lastMessageTimestamp == lastMessageTimestamp) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.renterId, renterId) ||
                other.renterId == renterId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastMessageRead, lastMessageRead) ||
                other.lastMessageRead == lastMessageRead) &&
            (identical(other.renterName, renterName) ||
                other.renterName == renterName) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      adId,
      adTitle,
      lastMessage,
      photoUrl,
      lastMessageTimestamp,
      senderId,
      renterId,
      createdAt,
      lastMessageRead,
      renterName,
      senderName);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel(
      {required final String id,
      required final String adId,
      required final String adTitle,
      required final String lastMessage,
      required final String photoUrl,
      @JsonKey(fromJson: timestampToDateTime)
      required final DateTime lastMessageTimestamp,
      required final String senderId,
      required final String renterId,
      @JsonKey(fromJson: timestampToDateTime) required final DateTime createdAt,
      required final bool lastMessageRead,
      required final String renterName,
      required final String senderName}) = _$ChatModelImpl;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String get id;
  @override
  String get adId;
  @override
  String get adTitle;
  @override
  String get lastMessage;
  @override
  String get photoUrl;
  @override
  @JsonKey(fromJson: timestampToDateTime)
  DateTime get lastMessageTimestamp;
  @override
  String get senderId;
  @override
  String get renterId;
  @override
  @JsonKey(fromJson: timestampToDateTime)
  DateTime get createdAt;
  @override
  bool get lastMessageRead;
  @override
  String get renterName;
  @override
  String get senderName;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
