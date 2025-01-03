import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:flutter/material.dart';

class PageNumberImage extends StatelessWidget {
  const PageNumberImage({super.key, required this.pageNumber, required this.currentPageIndex});

  final int pageNumber;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.black.withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(Dimens.roundedCornerRadius))),
      child: Padding(
        padding: const EdgeInsets.all(Dimens.paddingTiny),
        child: Text(
          '$currentPageIndex $slash $pageNumber',
          style: context.textTheme.titleSmall?.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
