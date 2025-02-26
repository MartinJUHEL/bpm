import 'package:assoshare/core/utils/timestamp_converter.dart';
import 'package:assoshare/domain/entities/chat/chat_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String id,
    required String adId,
    required String adTitle,
    required String lastMessage,
    required String photoUrl,
    @JsonKey(fromJson: timestampToDateTime) required DateTime lastMessageTimestamp,
    required String senderId,
    required String renterId,
    @JsonKey(fromJson: timestampToDateTime) required DateTime createdAt,
    required bool lastMessageRead,
    required String renterName,
    required String senderName,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);

  const ChatModel._();

  ChatEntity toEntity() => ChatEntity(
        id: id,
        adId: adId,
        adTitle: adTitle,
        lastMessage: lastMessage,
        lastMessageTimestamp: lastMessageTimestamp,
        photoUrl: photoUrl,
        senderId: senderId,
        renterId: renterId,
        renterName: renterName,
        senderName: senderName,
      );

  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'adId': adId,
      'adTitle': adTitle,
      'lastMessage': lastMessage,
      'photoUrl': photoUrl,
      'senderId': senderId,
      'renterId': renterId,
      'lastMessageRead': false,
      'lastMessageTimestamp': FieldValue.serverTimestamp(),
      'createdAt': FieldValue.serverTimestamp(),
      'renterName': renterName,
      'senderName': senderName,
    };
  }
}
