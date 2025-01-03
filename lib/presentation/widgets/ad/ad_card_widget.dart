import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/constants.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/date_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/widgets/common/base_shimmer.dart';
import 'package:assoshare/presentation/widgets/profile/profile_header.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdCardWidget extends StatelessWidget {
  final AdEntity adEntity;
  final VoidCallback onClicked;
  final bool fromUserProfile;
  final Widget optionWidget;

  const AdCardWidget(
      {super.key,
      required this.adEntity,
      required this.onClicked,
      this.fromUserProfile = false,
      required this.optionWidget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(
              username: adEntity.renterName,
              photoUrl: adEntity.renterPhotoUrl,
              userNameTextStyle: context.textTheme.bodySmall,
              avatarTextStyle: context.textTheme.bodySmall?.copyWith(color: AppColors.white),
              padding: Dimens.paddingSmaller,
              avatarRadius: _avatarRadius,
              isDropdown: false,
              onClicked: () => {}),
          const Gap(Dimens.paddingSmaller),
          Stack(children: [
            Hero(
              tag: Constants.adImageHeroTag.buildHeroTag(adEntity.id),
              child: Container(
                height: _imageHeight,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimens.adImageCornerRadius),
                      topRight: Radius.circular(Dimens.adImageCornerRadius),
                      bottomRight: Radius.circular(Dimens.adImageCornerRadius)),
                ),
                child: adEntity.photosUrl.isNotEmpty && adEntity.photosUrl[0].isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: adEntity.photosUrl[0],
                        fit: BoxFit.cover,
                        placeholder: (context, url) => BaseShimmer(child: Container()),
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
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(Dimens.paddingSmaller),
                  child: optionWidget,
                ))
          ]),
          const Gap(Dimens.paddingTinier),
          Text(adEntity.title, maxLines: 2, style: context.textTheme.titleMedium, overflow: TextOverflow.ellipsis),
          Text(adEntity.displayTypeAndPrice(), style: context.textTheme.titleSmall, overflow: TextOverflow.ellipsis),
          Text(adEntity.city.displayCity(), style: context.textTheme.labelSmall, overflow: TextOverflow.ellipsis),
          Text(adEntity.creationDate.format(eEEEdMMMMHHmm).capitalize(),
              style: context.textTheme.labelSmall, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double _imageHeight = 180;
const double _avatarRadius = 10;
