import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/widgets/ad/ad_card_widget.dart';
import 'package:assoshare/presentation/widgets/common/circle_icon_button.dart';
import 'package:flutter/material.dart';

class ListAdsWidget extends StatelessWidget {
  final List<AdEntity> ads;
  final bool isEditable;
  final Function(String)? onFavoriteClicked;
  final Function(String)? onMoreClicked;

  const ListAdsWidget(
      {super.key, required this.ads, this.isEditable = false, this.onFavoriteClicked, this.onMoreClicked});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = size.height / 2.3;
    final double itemWidth = size.width / 2;

    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: itemWidth / itemHeight,
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
            onClicked: () {
              /*TODO*/
            },
            optionWidget: isEditable
                ? CircleIconButton(onPressed: () => onMoreClicked?.call(ad.id), icon: Icons.more_horiz)
                //TODO : handle favorite
                : CircleIconButton(onPressed: () => onFavoriteClicked?.call(ad.id), icon: Icons.favorite_border),
          );
        });
  }
}
