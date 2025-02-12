import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/widgets/common/favorite_button_widget.dart';
import 'package:flutter/material.dart';

class AdDetailsTopBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AdDetailsTopBarWidget({
    super.key,
    required this.onBackPressed,
    required this.isFromProfile,
    required this.onShareClicked,
    required this.onEditClicked,
    required this.onFavoriteClicked,
    required this.isFavorite,
    required this.adTitle,
    required this.animationController,
    required this.parentContext,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  final bool isFromProfile;
  final bool isFavorite;
  final String adTitle;
  final VoidCallback onBackPressed;
  final VoidCallback onShareClicked;
  final VoidCallback onEditClicked;
  final VoidCallback onFavoriteClicked;
  final AnimationController animationController;
  final BuildContext parentContext;

  @override
  final Size preferredSize; // default is 56.0

  @override
  State<AdDetailsTopBarWidget> createState() => _AdDetailsTopBarWidgetState();
}

class _AdDetailsTopBarWidgetState extends State<AdDetailsTopBarWidget> {
  late Animation _colorTween, _iconColorTween, _textColorTween;

  @override
  void initState() {
    _colorTween = ColorTween(begin: Colors.transparent, end: AppColors.white).animate(widget.animationController);
    _iconColorTween = ColorTween(begin: AppColors.white, end: widget.parentContext.colorScheme.primary)
        .animate(widget.animationController);
    _textColorTween = ColorTween(begin: Colors.transparent, end: widget.parentContext.colorScheme.primary)
        .animate(widget.animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animationController,
        builder: (context, child) {
          return AppBar(
            backgroundColor: _colorTween.value,
            title: Text(
              widget.adTitle,
              style: context.textTheme.titleMedium?.copyWith(color: _textColorTween.value),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: IconButton(
                onPressed: widget.onBackPressed,
                icon: Icon(
                  Icons.arrow_back,
                  color: _iconColorTween.value,
                )),
            actions: [
              IconButton(
                  onPressed: widget.onShareClicked,
                  icon: Icon(
                    Icons.share,
                    color: _iconColorTween.value,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: Dimens.paddingSmall),
                child: widget.isFromProfile
                    ? IconButton(
                        onPressed: widget.onEditClicked,
                        icon: Icon(
                          Icons.more_horiz,
                          color: _iconColorTween.value,
                        ))
                    : FavoriteButtonWidget(onPressed: widget.onFavoriteClicked, isFavorite: widget.isFavorite),
              )
            ],
          );
        });
  }
}
