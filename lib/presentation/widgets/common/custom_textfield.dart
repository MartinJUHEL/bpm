import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/callback_utils.dart';
import 'package:flutter/cupertino.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onSearchStarted,
      required this.onQueryChanged,
      required this.searchTextController,
      this.onTap,
      required this.placeholder,
      this.prefix,
      this.suffix});

  static const double searchBarHeight = 45;

  final StringCallback? onSearchStarted;
  final StringCallback onQueryChanged;
  final TextEditingController searchTextController;
  final VoidCallback? onTap;
  final String placeholder;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: searchBarHeight,
      child: CupertinoTextField(
        onSubmitted: onSearchStarted,
        controller: searchTextController,
        onTap: onTap,
        onChanged: (query) => onQueryChanged(query),
        keyboardType: TextInputType.text,
        placeholder: placeholder,
        style: context.textTheme.titleSmall,
        placeholderStyle: context.textTheme.labelLarge?.copyWith(color: context.colorScheme.secondary),
        prefix: prefix,
        suffix: suffix,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.paddingSmall),
          color: AppColors.white,
        ),
      ),
    );
  }
}
