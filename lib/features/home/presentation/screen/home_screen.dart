import 'package:bpm/core/di/injection.dart';
import 'package:bpm/features/home/presentation/bloc/home_bloc.dart';
import 'package:bpm/features/profil/presentation/screens/profil_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              bottomNavigationBar: BottomNavigationBar(
                items: bottomNavItems,
                currentIndex: state.tabIndex,
                backgroundColor: Theme.of(context).colorScheme.background,
                unselectedItemColor: Theme.of(context).colorScheme.secondary,
                selectedItemColor: Theme.of(context).colorScheme.primary,
                showUnselectedLabels: true,
                unselectedLabelStyle:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
                onTap: (index) {
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeEvent.tabChanged(index));
                },
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildNavigationBarScreens() {
    return <Widget>[
      Text('Index 0: Home'),
      Text('Index 1: Category'),
      Text('Index 2: Search'),
      Text('Index 3: Favourite'),
      const ProfilScreen(),
    ];
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  final List<BottomNavigationBarItem> bottomNavItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: const Icon(Icons.search),
      label: tr('search'),
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.favorite_border_outlined),
      label: tr('likes'),
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.calendar_month_outlined),
      label: tr('rentals'),
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.message_outlined),
      label: tr('messages'),
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.person_2_outlined),
      label: tr('profil'),
    ),
  ];
}
