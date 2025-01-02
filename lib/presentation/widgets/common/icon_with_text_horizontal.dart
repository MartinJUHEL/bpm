import 'package:assoshare/app/dimens.dart';
import 'package:flutter/material.dart';

class IconWithTextHorizontal extends StatelessWidget {
  const IconWithTextHorizontal(
      {super.key,
      required this.text,
      required this.icon,
      this.onClicked,
      this.padding = Dimens.paddingSmall,
      required this.textStyle});

  final String text;
  final Widget icon;
  final VoidCallback? onClicked;
  final double padding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onClicked,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: padding,
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
