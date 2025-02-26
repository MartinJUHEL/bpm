import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MessageBottomSheet extends StatefulWidget {
  final Function(String) onSend;
  final String renterName;

  const MessageBottomSheet({
    super.key,
    required this.onSend,
    required this.renterName,
  });

  @override
  State<MessageBottomSheet> createState() => _MessageBottomSheetState();
}

class _MessageBottomSheetState extends State<MessageBottomSheet> {
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.all(Dimens.paddingRegular),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'adDetails.contactUser'.tr(args: [widget.renterName]),
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: Dimens.paddingRegular),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'chat.details.input.hint'.tr(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimens.roundedCornerRadius),
                ),
              ),
              maxLines: 4,
              minLines: 1,
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
              onSubmitted: _sendMessage,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: Dimens.paddingLarge),
            ElevatedButton(
              onPressed: () => _sendMessage(_messageController.text),
              child: Text('chat.details.input.send'.tr()),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage(String message) {
    final trimmedMessage = message.trim();
    if (trimmedMessage.isNotEmpty) {
      widget.onSend(trimmedMessage);
      Navigator.pop(context);
    }
  }
}
