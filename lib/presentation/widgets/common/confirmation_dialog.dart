import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/widgets/common/custom_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog(
      {super.key,
      required this.message,
      required this.onConfirmClicked,
      required this.onCancelClicked,
      required this.confirmText});

  final String message;
  final VoidCallback onConfirmClicked;
  final VoidCallback onCancelClicked;
  final String confirmText;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message, style: context.textTheme.bodyMedium,),
          const Gap(Dimens.paddingRegular),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              onPressed: onCancelClicked,
              child: Text(tr('cancel')),
            ),
            TextButton(
              onPressed: onConfirmClicked,
              child: Text(confirmText),
            ),
          ])
        ],
      ),
    );
  }
}
