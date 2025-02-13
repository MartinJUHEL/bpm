import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/callback_utils.dart';
import 'package:assoshare/presentation/widgets/common/custom_textfield.dart';
import 'package:assoshare/presentation/widgets/common/icon_with_text_horizontal.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdSearchBar extends StatelessWidget {
  const AdSearchBar(
      {super.key,
      required this.onTap,
      required this.searchTextController,
      required this.isSearching,
      required this.onClearClicked,
      required this.onQueryChanged,
      required this.cityName,
      required this.onBackPressed,
      required this.onCityClicked,
      required this.displayCity,
      required this.onSearchStarted,
      required this.focusNode});

  final VoidCallback onTap;
  final TextEditingController searchTextController;
  final bool isSearching;
  final VoidCallback onClearClicked;
  final Function(String) onQueryChanged;
  final String cityName;
  final VoidCallback onBackPressed;
  final VoidCallback onCityClicked;
  final bool displayCity;
  final StringCallback onSearchStarted;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
      child: Column(
        children: [
          CustomTextField(
            focusNode: focusNode,
            onSearchStarted: onSearchStarted,
            onQueryChanged: onQueryChanged,
            searchTextController: searchTextController,
            onTap: onTap,
            placeholder: 'searchPlaceholder'.tr(),
            prefix: isSearching
                ? IconButton(
                    onPressed: onBackPressed,
                    icon: const Icon(Icons.chevron_left),
                    padding: EdgeInsets.zero,
                  )
                : IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: Dimens.iconMedium,
                      color: Colors.black,
                    ),
                  ),
            suffix: searchTextController.text.isNotEmpty
                ? IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: onClearClicked,
                    icon: const Icon(
                      Icons.clear,
                      size: Dimens.iconMedium,
                      color: AppColors.black,
                    ),
                  )
                : null,
          ),
          if (displayCity)
            GestureDetector(
                onTap: onCityClicked,
                child: Column(
                  children: [
                    const Gap(Dimens.paddingRegular),
                    IconWithTextHorizontal(
                      text: cityName,
                      icon: const Icon(
                        Icons.location_on_outlined,
                        size: Dimens.iconMedium,
                      ),
                      textStyle: context.textTheme.titleSmall,
                      padding: Dimens.paddingTiny,
                    ),
                  ],
                ))
        ],
      ),
    );
  }
}
