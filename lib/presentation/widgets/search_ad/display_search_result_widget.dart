import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_cubit.dart';
import 'package:assoshare/presentation/screens/ad_details_screen.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class DisplaySearchResultWidget extends StatefulWidget {
  const DisplaySearchResultWidget({
    super.key,
    required this.ads,
    required this.onRefresh,
    this.onNextPage,
    required this.totalAds,
    required this.isNextPageLoading,
  });

  final List<AdEntity> ads;
  final AsyncCallback onRefresh;
  final AsyncCallback? onNextPage;
  final int totalAds;
  final bool isNextPageLoading;

  @override
  State<DisplaySearchResultWidget> createState() => _DisplaySearchResultWidgetState();
}

class _DisplaySearchResultWidgetState extends State<DisplaySearchResultWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: widget.onRefresh,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'numberResult'.tr(args: [widget.totalAds.toString()]),
                  style: context.textTheme.titleMedium?.copyWith(color: context.colorScheme.outline),
                ),
                const Gap(Dimens.paddingRegular),
                ListAdsWidget(
                  isEditable: false,
                  ads: widget.ads,
                  onAdClicked: (ad) => context.pushNamed(
                    RouteList.searchAdDetails.name,
                    extra: AdDetailsScreenArgs(
                      ad: ad,
                      fromUserProfile: false,
                    ),
                  ),
                  onFavoriteClicked: (adId) => context.read<FavoriteCubit>().toggleFavorite(adId),
                ),
                if (widget.isNextPageLoading)
                  const Column(
                    children: [
                      Gap(Dimens.paddingLarge),
                      Center(
                        child: SizedBox(
                          height: Dimens.iconMedium,
                          width: Dimens.iconMedium,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ],
                  ),
                const Gap(Dimens.paddingLarge),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent - 300) {
      widget.onNextPage?.call();
    }
  }
}
