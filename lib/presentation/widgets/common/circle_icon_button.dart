import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const CircleIconButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      this.backgroundColor = AppColors.white,
      this.iconColor = AppColors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 5.0)]),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.paddingTiny),
          child: Icon(
            icon,
            color: iconColor,
            size: Dimens.iconSmall,
          ),
        ),
      ),
    );
  }
}
