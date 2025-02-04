import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/callback_utils.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LocationRadiusSliderWidget extends StatelessWidget {
  const LocationRadiusSliderWidget({super.key, required this.filter, required this.onSliderChanged});

  final FilterEntity filter;
  final DoubleCallback onSliderChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(Dimens.paddingRegular),
        SizedBox(
          height: 30,
          child: Slider(
            value: filter.getIndexOfRadius().toDouble(),
            max: FilterEntity.radiusValues.length.roundToDouble() - 1,
            min: 0,
            divisions: FilterEntity.radiusValues.length,
            label: filter.displayRadiusString(),
            onChanged: onSliderChanged,
          ),
        ),
        const Gap(Dimens.paddingTiny),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'km'.tr(args: [FilterEntity.radiusValues.first.toString()]),
              style: context.textTheme.labelMedium,
            ),
            Text('km'.tr(args: [FilterEntity.radiusValues.last.toString()]), style: context.textTheme.labelMedium),
          ],
        )
      ],
    );
  }
}
