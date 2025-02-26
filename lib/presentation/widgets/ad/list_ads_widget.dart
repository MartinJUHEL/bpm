import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/callback_utils.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_ids_cubit.dart';
import 'package:assoshare/presentation/widgets/ad/ad_card_widget.dart';
import 'package:assoshare/presentation/widgets/common/circle_icon_button.dart';
import 'package:assoshare/presentation/widgets/common/favorite_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListAdsWidget extends StatelessWidget {
  final List<AdEntity> ads;
  final bool isEditable;
  final StringCallback? onFavoriteClicked;
  final StringCallback? onMoreClicked;
  final Function(AdEntity) onAdClicked;

  const ListAdsWidget({
    super.key,
    required this.ads,
    this.isEditable = false,
    this.onFavoriteClicked,
    this.onMoreClicked,
    required this.onAdClicked,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteIdsCubit, Set<String>>(
      builder: (context, state) {
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
            final bool isFavorite = context.read<FavoriteIdsCubit>().isFavorite(ad.id);
            return AdCardVerticalWidget(
                adEntity: ad,
                onClicked: () => onAdClicked(ad),
                optionWidget: isEditable
                    ? CircleIconButton(
                        onPressed: () => onMoreClicked?.call(ad.id),
                        icon: Icons.more_horiz,
                      )
                    : FavoriteButtonWidget(onPressed: () => onFavoriteClicked?.call(ad.id), isFavorite: isFavorite));
          },
        );
      },
    );
  }
}
