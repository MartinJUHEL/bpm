import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_list_cubit.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_list_state.dart';
import 'package:assoshare/presentation/screens/ad_details_screen.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/common/expanded_center_widget.dart';
import 'package:assoshare/presentation/widgets/favorite/favorite_list_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<FavoriteListCubit>().loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.paddingPage),
          child: Text(
            'myFavorites'.tr(),
            style: context.textTheme.titleLarge,
          ),
        ),
        BlocBuilder<FavoriteListCubit, FavoriteListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Expanded(
                child: ExpandedCenterWidget(
                  child: CircularProgressIndicator(),
                ),
              ),
              error: () => ExpandedCenterWidget(
                  child: ErrorScreen(
                onRetryClicked: () =>
                    context.read<FavoriteListCubit>().loadFavorites(),
              )),
              success: (favorites) => Expanded(
                child: RefreshIndicator(
                  onRefresh: () =>
                      context.read<FavoriteListCubit>().loadFavorites(),
                  child: favorites.isEmpty
                      ? _buildEmptyState(context)
                      : FavoriteListWidget(
                          favorites: favorites,
                          onAdDismissed: (adId) => context
                              .read<FavoriteListCubit>()
                              .removeFavorite(adId),
                          onAdClicked: (ad) => context.pushNamed(
                            RouteList.searchAdDetails.name,
                            extra: AdDetailsScreenArgs(
                              ad: ad,
                              fromUserProfile: false,
                            ),
                          ),
                        ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.paddingPage),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_border,
                size: 64,
                color: context.colorScheme.outline,
              ),
              const Gap(Dimens.paddingRegular),
              Text(
                'noFavorites'.tr(),
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.colorScheme.outline,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
