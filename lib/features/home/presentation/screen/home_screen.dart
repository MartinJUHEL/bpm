import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/presentation/widgets/icon_with_text_vertical.dart';
import 'package:assoshare/features/home/presentation/bloc/home_bloc.dart';
import 'package:assoshare/features/profil/presentation/screens/profil_screen.dart';
import 'package:assoshare/features/publish_ad/presentation/screens/publish_ad_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../app/constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Center(
                child: _buildNavigationBarScreens().elementAt(state.tabIndex),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () => {_goToPublishAd(context)},
                backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
                child: const FaIcon(
                  FontAwesomeIcons.plus,
                ),
              ),
              bottomNavigationBar: BottomAppBar(
                height: Constants.bottomBarHeight,
                padding: const EdgeInsets.symmetric(
                    vertical: Constants.smallPadding,
                    horizontal: Constants.regularPadding),
                color: Theme.of(context).colorScheme.primary,
                shape: const CircularNotchedRectangle(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconWithTextVertical(
                        text: tr('search'),
                        icon: const Icon(Icons.search),
                        onClicked: () => BlocProvider.of<HomeBloc>(context)
                            .add(const HomeEvent.tabChanged(0)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconWithTextVertical(
                          text: tr('likes'),
                          icon: const Icon(Icons.favorite_border_outlined),
                          onClicked: () => BlocProvider.of<HomeBloc>(context)
                              .add(const HomeEvent.tabChanged(1))),
                    ),
                    const SizedBox(
                      width: Constants.homeFloatingButtonSpace,
                    ),
                    Expanded(
                      flex: 1,
                      child: IconWithTextVertical(
                          text: tr('messages'),
                          icon: const Icon(Icons.message_outlined),
                          onClicked: () => BlocProvider.of<HomeBloc>(context)
                              .add(const HomeEvent.tabChanged(2))),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconWithTextVertical(
                          text: tr('profil'),
                          icon: const Icon(Icons.person_2_outlined),
                          onClicked: () => BlocProvider.of<HomeBloc>(context)
                              .add(const HomeEvent.tabChanged(3))),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _goToPublishAd(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PublishAdScreen()),
    );
  }

  List<Widget> _buildNavigationBarScreens() {
    return <Widget>[
      const Text('Index 2: Search'),
      const Text('Index 3: Favourite'),
      const Text('Index 1: Messages'),
      const ProfilScreen(),
    ];
  }
}
