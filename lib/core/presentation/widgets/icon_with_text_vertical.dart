import 'package:assoshare/app/constants.dart';
import 'package:flutter/material.dart';

class IconWithTextVertical extends StatelessWidget {
  const IconWithTextVertical(
      {super.key, required this.text, required this.icon, this.onClicked});

  final String text;
  final Widget icon;
  final VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onClicked,
      child: Column(
        children: [
          Text(
            text,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: Constants.tinyPadding,
          ),
          icon
        ],
      ),
    );
  }
}
