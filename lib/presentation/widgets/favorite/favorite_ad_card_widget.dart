import 'package:assoshare/app/constants.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/date_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/widgets/common/base_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdCardHorizontalWidget extends StatelessWidget {
  final AdEntity ad;
  final VoidCallback onTap;

  const AdCardHorizontalWidget({
    super.key,
    required this.ad,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Dimens.paddingTiny),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Hero(
              tag: Constants.adImageHeroTag.buildHeroTag(ad.id),
              child: Container(
                height: Dimens.adHorizontalCardImageSize,
                width: Dimens.adHorizontalCardImageSize,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimens.adImageCornerRadius),
                      topRight: Radius.circular(Dimens.adImageCornerRadius),
                      bottomRight: Radius.circular(Dimens.adImageCornerRadius)),
                ),
                child: ad.photosUrl.isNotEmpty && ad.photosUrl[0].isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: ad.photosUrl[0],
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            BaseShimmer(child: Container()),
                      )
                    : Container(
                        color: context.colorScheme.outline,
                        child: const Icon(
                          Icons.photo_library_outlined,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            const Gap(Dimens.paddingRegular),
            // Informations
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    ad.title,
                    style: context.textTheme.titleMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(Dimens.paddingSmaller),
                  Text(
                    ad.displayTypeAndPrice(),
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.primary,
                    ),
                  ),
                  const Gap(Dimens.paddingSmaller),
                  Text(
                    ad.city.displayCity(),
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.outline,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(Dimens.paddingTiny),
                  Text(ad.creationDate.format(eEEEdMMMMHHmm).capitalize(),
                      style: context.textTheme.labelSmall
                          ?.copyWith(color: context.colorScheme.outline),
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
