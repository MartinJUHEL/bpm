import 'package:assoshare/app/dimens.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.roundedCornerRadius),
      ),
      elevation: 0,
      child: Padding(padding: const EdgeInsets.all(Dimens.paddingRegular), child: child),
    );
  }
}
