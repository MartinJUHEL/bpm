import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/callback_utils.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/widgets/ad/ad_card_widget.dart';
import 'package:assoshare/presentation/widgets/common/circle_icon_button.dart';
import 'package:flutter/material.dart';

class ListAdsWidget extends StatelessWidget {
  final List<AdEntity> ads;
  final bool isEditable;
  final StringCallback? onFavoriteClicked;
  final StringCallback? onMoreClicked;
  final Function(AdEntity) onAdClicked;

  const ListAdsWidget(
      {super.key,
      required this.ads,
      this.isEditable = false,
      this.onFavoriteClicked,
      this.onMoreClicked,
      required this.onAdClicked});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.53,
          crossAxisSpacing: Dimens.paddingRegular,
          mainAxisSpacing: Dimens.paddingRegular,
        ),
        itemCount: ads.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final AdEntity ad = ads[index];
          return AdCardWidget(
            adEntity: ad,
            onClicked: () => onAdClicked(ad),
            //TODO : handle favorite
            optionWidget: isEditable
                ? CircleIconButton(onPressed: () => onMoreClicked?.call(ad.id), icon: Icons.more_horiz)
                : CircleIconButton(onPressed: () => onFavoriteClicked?.call(ad.id), icon: Icons.favorite_border),
          );
        });
  }
}
