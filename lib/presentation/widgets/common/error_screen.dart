import 'package:assoshare/app/constants.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/presentation/widgets/common/submit_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorScreen extends StatelessWidget {
  final VoidCallback? onRetryClicked;

  const ErrorScreen({super.key, this.onRetryClicked});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Constants.noConnectivityAsset),
        const SizedBox(height: Dimens.paddingLarge),
        Text(tr('errorTitle')),
        const SizedBox(height: Dimens.paddingRegular),
        Text(tr('errorOccurred')),
        const SizedBox(height: Dimens.paddingLarge),
        if (onRetryClicked != null) SubmitButton(title: tr('retry'), onPressed: onRetryClicked ?? () => {}),
        const SizedBox(height: Dimens.paddingLarge),
      ],
    );
  }
}
