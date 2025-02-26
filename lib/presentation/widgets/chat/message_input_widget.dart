import 'package:assoshare/app/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MessageInputWidget extends StatelessWidget {
  const MessageInputWidget({
    super.key,
    required this.onSendMessage,
    required this.controller,
  });

  final void Function(String) onSendMessage;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.paddingSmaller),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'chat.details.input.hint'.tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimens.roundedCornerRadius),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: Dimens.paddingRegular,
                    vertical: Dimens.paddingSmaller,
                  ),
                ),
                maxLines: null,
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
            const Gap(Dimens.paddingSmaller),
            IconButton(
              onPressed: () {
                final message = controller.text.trim();
                if (message.isNotEmpty) {
                  onSendMessage(message);
                  controller.clear();
                }
              },
              tooltip: 'chat.details.input.send'.tr(),
              icon: Icon(
                Icons.send,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
