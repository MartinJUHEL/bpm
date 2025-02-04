import 'package:assoshare/app/dimens.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCheckboxWidget extends StatelessWidget {
  const CustomCheckboxWidget(
      {super.key, required this.title, required this.value, required this.onChanged, this.scale = 1, this.textStyle});

  final String title;
  final bool value;
  final Function(bool?) onChanged;
  final double scale;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: scale,
          child: SizedBox(
              width: 20, height: 20, child: Checkbox(value: value, onChanged: (newValue) => onChanged(newValue))),
        ),
        const Gap(Dimens.paddingSmall),
        Text(
          title,
          style: textStyle,
        )
      ],
    );
  }
}
