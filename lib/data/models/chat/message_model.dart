import 'package:assoshare/core/utils/timestamp_converter.dart';
import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String content,
    required String senderId,
    @JsonKey(fromJson: timestampToDateTime) required DateTime timestamp,
    required String type,
    required String status,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

  const MessageModel._();

  MessageEntity toEntity() => MessageEntity(
        id: id,
        content: content,
        senderId: senderId,
        timestamp: timestamp,
        type: MessageType.values.firstWhere(
          (e) => e.name == type,
          orElse: () => MessageType.text,
        ),
        status: MessageStatus.values.firstWhere(
          (e) => e.name == status,
          orElse: () => MessageStatus.sent,
        ),
      );

  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'content': content,
      'senderId': senderId,
      'timestamp': FieldValue.serverTimestamp(),
      'type': type,
      'status': status,
    };
  }
}
