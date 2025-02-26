enum MessageType { text, image }
enum MessageStatus { sent, delivered, read }

class MessageEntity {
  final String id;
  final String content;
  final String senderId;
  final DateTime timestamp;
  final MessageType type;
  final MessageStatus status;

  const MessageEntity({
    required this.id,
    required this.content,
    required this.senderId,
    required this.timestamp,
    this.type = MessageType.text,
    this.status = MessageStatus.sent,
  });
}
