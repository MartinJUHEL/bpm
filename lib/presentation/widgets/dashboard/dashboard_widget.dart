import 'package:assoshare/app/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(Dimens.paddingRegular),
        const Text('PUB'),
        const Gap(Dimens.paddingRegular),
        const Text('recommended').tr(),
        const Gap(Dimens.paddingRegular),
        const Text('favorites').tr()
      ],
    );
  }
}
