import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/constants.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/date_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_cubit.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_state.dart';
import 'package:assoshare/presentation/widgets/ad/ad_menu_modal.dart';
import 'package:assoshare/presentation/widgets/ad_details/ad_details_top_bar_widget.dart';
import 'package:assoshare/presentation/widgets/common/base_shimmer.dart';
import 'package:assoshare/presentation/widgets/common/confirmation_dialog.dart';
import 'package:assoshare/presentation/widgets/common/page_number_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AdDetailsScreen extends StatefulWidget {
  const AdDetailsScreen({
    super.key,
    required this.args,
  });

  final AdDetailsScreenArgs args;

  @override
  State<AdDetailsScreen> createState() => _AdDetailsScreenState();
}

class _AdDetailsScreenState extends State<AdDetailsScreen> with TickerProviderStateMixin {
  late AnimationController _colorAnimationController;

  @override
  void initState() {
    _colorAnimationController = AnimationController(vsync: this, duration: const Duration(seconds: 0));
    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _colorAnimationController.animateTo(
          (scrollInfo.metrics.pixels - _minAnimationThreshold) / (_maxAnimationThreshold - _minAnimationThreshold));
      return true;
    } else {
      _colorAnimationController.animateTo(0);
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        final bool isFavorite = context.read<FavoriteCubit>().isFavorite(widget.args.ad.id);
        return Scaffold(
          extendBodyBehindAppBar: true,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              // TODO : Redirection to contact page
            },
            label: Text(
              'contact',
              style: context.textTheme.titleSmall?.copyWith(color: AppColors.white),
            ).tr(),
            icon: const Icon(Icons.message, color: AppColors.white),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          appBar: AdDetailsTopBarWidget(
            parentContext: context,
            animationController: _colorAnimationController,
            onBackPressed: () => context.pop(),
            isFromProfile: widget.args.fromUserProfile,
            onShareClicked: () {
              /*TODO*/
            },
            onEditClicked: () {
              _showAdMenuModal(
                adId: widget.args.ad.id,
                context: context,
              );
            },
            onFavoriteClicked: () => context.read<FavoriteCubit>().toggleFavorite(widget.args.ad.id),
            isFavorite: isFavorite,
            adTitle: widget.args.ad.title,
          ),
          body: NotificationListener(
            onNotification: _scrollListener,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Hero(
                        tag: Constants.adImageHeroTag.buildHeroTag(widget.args.ad.id),
                        child: GestureDetector(
                          onTap: () => {
                            if (widget.args.ad.hasPhoto())
                              {
                                context.pushNamed(RouteList.adPhotoPager.name, extra: widget.args.ad.photosUrl),
                              }
                          },
                          child: SizedBox(
                            width: double.infinity,
                            height: _imageHeight,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                widget.args.ad.photosUrl.isNotEmpty
                                    ? CachedNetworkImage(
                                        imageUrl: widget.args.ad.photosUrl[0],
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
                                if (widget.args.ad.hasPhoto())
                                  Padding(
                                    padding: const EdgeInsets.all(Dimens.paddingPage),
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: PageNumberImage(
                                            pageNumber: widget.args.ad.photosUrl.length,
                                            currentPageIndex: _initialPage)),
                                  ),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.7), // Darker at the top
                                        Colors.transparent,
                                      ],
                                      stops: const [0.0, 0.5], // Adjust the stops for gradient distribution
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(Dimens.paddingRegular),
                        Text(
                          widget.args.ad.title,
                          style: context.textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                        const Gap(Dimens.paddingSmall),
                        Text(
                          widget.args.ad.displayTypeAndPrice(),
                          style: context.textTheme.titleSmall,
                          maxLines: 2,
                        ),
                        const Gap(Dimens.paddingSmall),
                        Text(widget.args.ad.creationDate.format(eEEEdMMMMHHmm).capitalize(),
                            style: context.textTheme.labelMedium, overflow: TextOverflow.ellipsis),
                        const Gap(Dimens.paddingSmall),
                        const Divider(),
                        Text(
                          'description',
                          style: context.textTheme.headlineSmall,
                        ).tr(),
                        const Gap(Dimens.paddingSmall),
                        Text(
                          widget.args.ad.description,
                          style: context.textTheme.bodyMedium,
                        ),
                        const Gap(Dimens.paddingHuge),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

_showAdMenuModal({required BuildContext context, required String adId}) {
  showModalBottomSheet(
      showDragHandle: true,
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (BuildContext modalContext) {
        return AdMenuModal(
            onEditClicked: () => {
                  /*TODO AD EDITION*/
                },
            onDeleteClicked: () {
              Navigator.pop(modalContext);
              _showDeletionDialog(context, adId);
            });
      });
}

_showDeletionDialog(BuildContext context, String adId) {
  showDialog(
      context: context,
      builder: (dialogContext) => ConfirmationDialog(
            message: tr('confirmDeletion'),
            onCancelClicked: () => Navigator.pop(context),
            onConfirmClicked: () {
              Navigator.pop(dialogContext);
              // return true to trigger deletion on adlist.
              context.pop(true);
            },
            confirmText: tr('delete'),
          ));
}

class AdDetailsScreenArgs {
  const AdDetailsScreenArgs({required this.ad, required this.fromUserProfile});

  final AdEntity ad;
  final bool fromUserProfile;
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double _imageHeight = 400;
const int _initialPage = 1;
const int _minAnimationThreshold = 340;
const int _maxAnimationThreshold = 380;
