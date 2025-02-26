import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:flutter/material.dart';

class MessageStatusWidget extends StatelessWidget {
  const MessageStatusWidget({
    super.key,
    required this.status,
    required this.color,
  });

  final MessageStatus status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      status == MessageStatus.sent
          ? Icons.check
          : status == MessageStatus.delivered
              ? Icons.done_all
              : Icons.done_all,
      size: 12,
      color: status == MessageStatus.read ? Theme.of(context).colorScheme.primary : color,
    );
  }
}
