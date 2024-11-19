import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/features/Authentication/presentation/bloc/authentication_bloc.dart';
import 'package:assoshare/features/profil/presentation/bloc/profil_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../widgets/profil_menu_modal.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              locator<ProfilBloc>()..add(const ProfilEvent.started()),
        ),
        BlocProvider(create: (context) => locator<AuthenticationBloc>()),
      ],
      child: SafeArea(child: BlocBuilder<ProfilBloc, ProfilState>(
        builder: (context, state) {
          return Scaffold(
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    titleTextStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    elevation: 0,
                    snap: true,
                    iconTheme: IconThemeData(
                        color: Theme.of(context).colorScheme.primary),
                    floating: true,
                    title: Text(state.userName ?? ""),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () => _showMenuModal(context),
                      ),
                    ],
                  ),
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text('memberDate').tr(args: ['12242']),
                    ListView.builder(
                        itemCount: 50,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {}
                          return Text(index.toString());
                        }),
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }

  _showMenuModal(BuildContext context) {
    showBarModalBottomSheet(
      expand: false,
      context: context,
      builder: (context) => const ProfilMenuModal(),
    );
  }
}
