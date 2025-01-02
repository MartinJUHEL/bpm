import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/presentation/blocs/home/home_cubit.dart';
import 'package:assoshare/presentation/blocs/list_ads/list_ads_cubit.dart';
import 'package:assoshare/presentation/screens/publish_ad_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<HomeCubit>(),
        ),

        // List ads in profile.
        BlocProvider(
          create: (context) => locator<ListAdsCubit>(),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Center(
                child: _buildNavigationBarScreens().elementAt(state.tabIndex),
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () => {_goToPublishAd(context, user.uid)},
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const FaIcon(
                  FontAwesomeIcons.plus,
                ),
              ),
              bottomNavigationBar: BottomAppBar(
                height: Dimens.bottomBarHeight,
                padding: const EdgeInsets.symmetric(vertical: Dimens.paddingSmall, horizontal: Dimens.paddingRegular),
                shape: const CircularNotchedRectangle(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () => context.read<HomeCubit>().tabChanged(0),
                          icon: const Icon(Icons.search),
                          color: state.tabIndex == 0 ? context.colorScheme.primary : null,
                        )),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () => context.read<HomeCubit>().tabChanged(1),
                          icon: const Icon(Icons.favorite_border_outlined),
                          color: state.tabIndex == 1 ? context.colorScheme.primary : null,
                        )),
                    const SizedBox(
                      width: Dimens.homeFloatingButtonSpace,
                    ),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () => context.read<HomeCubit>().tabChanged(2),
                          icon: const Icon(Icons.message_outlined),
                          color: state.tabIndex == 2 ? context.colorScheme.primary : null,
                        )),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: () => context.read<HomeCubit>().tabChanged(3),
                          icon: const Icon(Icons.person_2_outlined),
                          color: state.tabIndex == 3 ? context.colorScheme.primary : null,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _goToPublishAd(BuildContext context, String uid) async {
    final addNewAdSuccess = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PublishAdScreen()),
    );

    if (context.mounted) {
      // If ad has been created, update list on profile page.
      if (addNewAdSuccess) {
        context.read<ListAdsCubit>().fetchAds(uid);
      }
    }
  }

  List<Widget> _buildNavigationBarScreens() {
    return <Widget>[
      const Text('Index 2: Search'),
      const Text('Index 3: Favourite'),
      const Text('Index 1: Messages'),
      const ProfileScreen(),
    ];
  }
}
