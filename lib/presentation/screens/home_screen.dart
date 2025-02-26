import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/router/route_list.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/presentation/blocs/profile_ads/profile_ads_cubit.dart';
import 'package:assoshare/presentation/blocs/user/user_cubit.dart';
import 'package:assoshare/presentation/navigation/navigation_cubit.dart';
import 'package:assoshare/presentation/screens/chat_tab.dart';
import 'package:assoshare/presentation/screens/favorite_tab.dart';
import 'package:assoshare/presentation/screens/search_tab.dart';
import 'package:assoshare/presentation/widgets/home/bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'profile_tab.dart';

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
          create: (context) => locator<UserCubit>()..initialize(),
        ),

        // List ads in profile.
        BlocProvider(
          create: (context) => locator<ProfileAdsCubit>(),
        ),
      ],
      child: BlocBuilder<UserCubit, UserEntity?>(builder: (context, user) {
        if (user == null) {
          return const SizedBox.shrink();
        }
        return BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, navState) {
            return SafeArea(
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: Center(
                    child: IndexedStack(
                      index: navState.navbarItem.itemIndex,
                      children: const [
                        SearchTab(),
                        FavoriteTab(),
                        ChatTab(),
                        ProfileTab(),
                      ],
                    ),
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
      }),
    );
  }

  _onPublishAdClicked(BuildContext context, String uid) async {
    final bool? addNewAdSuccess = await context.pushNamed(RouteList.publishAd.name);

    if (context.mounted) {
      // If ad has been created, update list on profile page.
      if (addNewAdSuccess == true) {
        context.read<ProfileAdsCubit>().fetchAds(uid);
      }
    }
  }
}
