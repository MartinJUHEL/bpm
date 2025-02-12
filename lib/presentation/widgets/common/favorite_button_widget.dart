import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatefulWidget {
  const FavoriteButtonWidget(
      {super.key,
      required this.onPressed,
      required this.isFavorite,
      this.size = Dimens.iconSmall,
      this.backgroundColor = AppColors.white});

  final VoidCallback onPressed;
  final bool isFavorite;
  final double size;
  final Color backgroundColor;

  @override
  State<FavoriteButtonWidget> createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(milliseconds: 100), vsync: this, value: 1.0);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _controller.reverse().then((value) => _controller.forward());
          widget.onPressed();
        },
        child: Container(
          decoration: BoxDecoration(
              color: widget.backgroundColor,
              shape: BoxShape.circle,
              boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 5.0)]),
          child: Padding(
            padding: const EdgeInsets.all(Dimens.paddingTiny),
            child: ScaleTransition(
              scale: Tween(begin: 0.7, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
              child: widget.isFavorite
                  ? Icon(
                      Icons.favorite,
                      size: widget.size,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                      size: widget.size,
                    ),
            ),
          ),
        ));
  }
}
