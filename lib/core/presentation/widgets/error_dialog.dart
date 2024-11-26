import 'package:assoshare/app/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String? errorTitle;
  final String? errorMessage;
  final VoidCallback onPressed;
  final Widget? image;

  const ErrorDialog({super.key, this.errorMessage, required this.onPressed, this.errorTitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(Constants.regularPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 100, height: 100, child: image ?? const SizedBox.shrink()),
            const SizedBox(height: Constants.largePadding),
            errorTitle != null ? Text(errorTitle ?? '') : const SizedBox.shrink(),
            const SizedBox(height: Constants.largePadding),
            errorMessage != null ? Text(errorMessage ?? '') : const SizedBox.shrink(),
            const SizedBox(height: Constants.largePadding),
            TextButton(
              onPressed: onPressed,
              child: Text(tr('close')),
            ),
          ],
        ),
      ),
    );
  }
}
