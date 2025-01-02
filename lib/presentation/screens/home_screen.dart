import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/presentation/blocs/home/home_cubit.dart';
import 'package:assoshare/presentation/blocs/list_ads/list_ads_cubit.dart';
import 'package:assoshare/presentation/navigation/navigation_cubit.dart';
import 'package:assoshare/presentation/widgets/home/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.selectedNavbarItem});

  final NavbarItem? selectedNavbarItem;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.selectedNavbarItem != null) {
      context.read<NavigationCubit>().getNavBarItem(widget.selectedNavbarItem!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<HomeCubit>()..initialize(),
        ),

        // List ads in profile.
        BlocProvider(
          create: (context) => locator<ListAdsCubit>(),
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        final user = state.user;
        if (user != null) {
          return BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, navState) {
              return SafeArea(
                child: Scaffold(
                    body: Center(
                      child: switch (navState.navbarItem) {
                        NavbarItem.search => const SizedBox.shrink(),
                        NavbarItem.favorites => const SizedBox.shrink(),
                        NavbarItem.messages => const SizedBox.shrink(),
                        NavbarItem.profile => const ProfileScreen(),
                      },
                    ),
                    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                    floatingActionButton: FloatingActionButton(
                      shape: const CircleBorder(),
                      onPressed: () => {_onPublishAdClicked(context, user.uid)},
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: const FaIcon(
                        FontAwesomeIcons.plus,
                      ),
                    ),
                    bottomNavigationBar: BottomNavigationBarWidget(tabIndex: navState.index)),
              );
            },
          );
        } else {
          // TODO : HANDLE THIS CASE;
          return const SizedBox.shrink();
        }
      }),
    );
  }

  _onPublishAdClicked(BuildContext context, String uid) async {
    final bool? addNewAdSuccess = await context.pushNamed(RouteList.publishAd.name);

    if (context.mounted) {
      // If ad has been created, update list on profile page.
      if (addNewAdSuccess == true) {
        context.read<ListAdsCubit>().fetchAds(uid);
      }
    }
  }
}
