import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class SearchAdNoResultWidget extends StatelessWidget {
  const SearchAdNoResultWidget({super.key});

  //TODO : TEST ON SMALL SCREEN

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(Dimens.paddingPage),
            Lottie.asset(_notFoundLottie, height: _imageSize, width: _imageSize),
            const Gap(Dimens.paddingRegular),
            Text(
              'noResultTitle',
              style: context.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ).tr(),
            const Gap(Dimens.paddingRegular),
            Text(
              'noResultSubtitle',
              style: context.textTheme.titleSmall,
              textAlign: TextAlign.center,
            ).tr(),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const String _notFoundLottie = 'assets/lottie/search_not_found.json';
const double _imageSize = 150;
