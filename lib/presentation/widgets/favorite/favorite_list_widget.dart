import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/presentation/widgets/favorite/favorite_ad_card_widget.dart';
import 'package:flutter/material.dart';

class FavoriteListWidget extends StatelessWidget {
  const FavoriteListWidget({
    super.key,
    required this.favorites,
    required this.onAdDismissed,
    required this.onAdClicked,
  });

  final List<FavoriteEntity> favorites;
  final void Function(String) onAdDismissed;
  final void Function(AdEntity) onAdClicked;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
      itemCount: favorites.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final favorite = favorites[index];
        return Dismissible(
          key: Key(favorite.ad.id),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: Dimens.paddingRegular),
            decoration: BoxDecoration(
              color: context.colorScheme.error,
              borderRadius: BorderRadius.circular(Dimens.roundedCornerRadius),
            ),
            child: Icon(
              Icons.delete_outline,
              color: context.colorScheme.onError,
            ),
          ),
          onDismissed: (_) => onAdDismissed(favorite.ad.id),
          child: AdCardHorizontalWidget(
            ad: favorite.ad,
            onTap: () => onAdClicked(favorite.ad),
          ),
        );
      },
    );
  }
}
