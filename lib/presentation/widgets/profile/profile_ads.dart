import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/blocs/list_ads/list_ads_cubit.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_empty_widget.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_loading_widget.dart';
import 'package:assoshare/presentation/widgets/ad/list_ads_widget.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocBuilder<ListAdsCubit, ListAdsState>(builder: (context, state) {
          return switch (state) {
            ListAdsInitial() => const ListAdsLoadingWidget(),
            ListAdsError() => ErrorScreen(
                onRetryClicked: () => {
                  /*todo*/
                },
              ),
            ListAdsEmpty() => const ListAdsEmptyWidget(),
            // TODO : is editable only on own user profile.
            ListAdsData() => ListAdsWidget(
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
