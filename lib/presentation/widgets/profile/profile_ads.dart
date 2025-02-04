import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/blocs/profile_ads/profile_ads_cubit.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_empty_widget.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_loading_widget.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_widget.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileAds extends StatelessWidget {
  final String uid;
  final Function(String) onMoreClicked;

  const ProfileAds({super.key, required this.uid, required this.onMoreClicked});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ads'.tr(),
          style: context.textTheme.titleLarge,
        ),
        const SizedBox(height: Dimens.paddingLarge),
        BlocBuilder<ProfileAdsCubit, ProfileAdsState>(builder: (context, state) {
          return switch (state) {
            ProfileAdsInitial() => const ListAdsLoadingWidget(),
            ProfileAdsError() => ErrorScreen(
                onRetryClicked: () => {
                  /*todo*/
                },
              ),
            ProfileAdsEmpty() => const ListAdsEmptyWidget(),
            // TODO : is editable only on own user profile.
            ProfileAdsData() => ListAdsWidget(
                onAdClicked: (ad) async {
                  final isDeleted = await context.pushNamed(RouteList.profileAdDetails.name, extra: ad);
                  if (context.mounted && isDeleted == true) {
                    context.read<ProfileAdsCubit>().deleteAd(ad.id);
                  }
                },
                ads: state.ads,
                isEditable: true,
                onMoreClicked: (adId) => onMoreClicked(adId),
              ),
          };
        })
      ],
    );
  }
}
