import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DisplaySearchResultWidget extends StatelessWidget {
  const DisplaySearchResultWidget({super.key, required this.ads});

  final List<AdEntity> ads;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO display number of result.
              Text('N ads', style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.outline)),
              const Gap(Dimens.paddingRegular),
              ListAdsWidget(
                isEditable: false,
                ads: ads,
                onAdClicked: (ad) => context.pushNamed(RouteList.searchAdDetails.name, extra: ad),
                onFavoriteClicked: (adId) {
                  //TODO handle favorite.
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
