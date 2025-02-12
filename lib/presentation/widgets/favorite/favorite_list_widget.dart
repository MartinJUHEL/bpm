import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/presentation/widgets/favorite/favorite_ad_card_widget.dart';
import 'package:flutter/material.dart';

class FavoriteListWidget extends StatelessWidget {
  final List<FavoriteEntity> favorites;
  final Function(FavoriteEntity) onAdSwiped;
  final Function(FavoriteEntity) onAdClicked;

  const FavoriteListWidget({
    super.key,
    required this.favorites,
    required this.onAdSwiped,
    required this.onAdClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: favorites.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final favorite = favorites[index];
        return Dismissible(
          key: Key(favorite.id),
          direction: DismissDirection.endToStart,
          background: Container(
            color: context.colorScheme.error,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: Dimens.paddingLarge),
            child: Icon(
              Icons.delete_outline,
              color: context.colorScheme.onError,
            ),
          ),
          onDismissed: (_) => onAdSwiped(favorite),
          child: AdCardHorizontalWidget(
            ad: favorite.ad,
            onTap: () => onAdClicked(favorite),
          ),
        );
      },
    );
  }
}
