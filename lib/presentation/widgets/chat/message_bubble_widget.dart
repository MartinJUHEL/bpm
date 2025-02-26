import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/chat/message_entity.dart';
import 'package:assoshare/presentation/widgets/chat/message_status_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:timeago/timeago.dart' as timeago;

class MessageBubbleWidget extends StatelessWidget {
  const MessageBubbleWidget({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  final MessageEntity message;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: Dimens.paddingTiny,
              horizontal: Dimens.paddingSmaller,
            ),
            padding: const EdgeInsets.all(Dimens.paddingRegular),
            decoration: BoxDecoration(
              color: isCurrentUser
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(Dimens.roundedCornerRadius),
            ),
            child: Text(
              message.content,
              style: context.textTheme.bodyMedium?.copyWith(
                color: isCurrentUser
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.paddingSmaller,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    timeago.format(
                      message.timestamp,
                      locale: context.locale.languageCode,
                    ),
                    style:
                        context.textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                if (isCurrentUser) ...[
                  const Gap(Dimens.paddingTiny),
                  MessageStatusWidget(
                    status: message.status,
                    color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.7),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
