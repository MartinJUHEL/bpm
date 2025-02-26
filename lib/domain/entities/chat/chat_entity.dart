import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';

@freezed
class ChatEntity with _$ChatEntity {
  const ChatEntity._();

  const factory ChatEntity({
    required final String id,
    required final String adId,
    required final String adTitle,
    required final String lastMessage,
    required final DateTime lastMessageTimestamp,
    required final String photoUrl,
    required final List<String> participants,
  }) = _ChatEntity;
}
