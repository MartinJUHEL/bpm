import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/ressources/lotties.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/favorite/favorite_entity.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_cubit.dart';
import 'package:assoshare/presentation/blocs/favorite/favorite_state.dart';
import 'package:assoshare/presentation/screens/ad_details_screen.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/favorite/favorite_list_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  void initState() {
    super.initState();
    // Charger les favoris au démarrage
    context.read<FavoriteCubit>().loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.paddingPage),
          child: Center(
            child: Text(
              'myFavorites'.tr(),
              style: context.textTheme.headlineSmall,
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<FavoriteCubit, FavoriteState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.error != null) {
                return const ErrorScreen();
              }

              if (state.favorites.isEmpty) {
                return _buildEmptyState(context);
              }

              return _buildFavoritesList(context, state.favorites);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.paddingPage),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 100,
                height: 100,
                child: Lottie.asset(Lotties.noFavorites)),
            Text(
              'noFavorites'.tr(),
              style: context.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(Dimens.paddingRegular),
            Text(
              'noFavoritesDescription'.tr(),
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoritesList(
      BuildContext context, List<FavoriteEntity> favorites) {
    return RefreshIndicator(
        onRefresh: () => context.read<FavoriteCubit>().loadFavorites(),
        child: FavoriteListWidget(
          favorites: favorites,
          onAdSwiped: (favorite) =>
              context.read<FavoriteCubit>().toggleFavorite(favorite.id),
          onAdClicked: (favorite) => context.pushNamed(
            RouteList.favoritesAdDetails.name,
            extra: AdDetailsScreenArgs(
              ad: favorite.ad,
              fromUserProfile: false,
            ),
          ),
        ));
  }
}
