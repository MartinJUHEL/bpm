import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:assoshare/presentation/blocs/profile/profile_cubit.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/profile/profile_details_widget.dart';
import 'package:assoshare/presentation/widgets/profile/profile_menu_modal.dart';
import 'package:assoshare/presentation/widgets/profile/user_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ProfileCubit>()..initialization(),
      child: SafeArea(child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: context.colorScheme.surface,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                      titleTextStyle: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 18),
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      elevation: 0,
                      snap: true,
                      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
                      floating: true,
                      title: switch (state) {
                        ProfilData() => UserProfileHeader(
                            username: state.user.displayName,
                            onClicked: () => _showMenuModal(context),
                            onShareClicked: () {
                              /*TODO SHARE PROFILE*/
                            },
                          ),
                        ProfileInit() || ProfileError() => UserProfileHeader(
                            username: unknown,
                            onClicked: () => _showMenuModal(context), onShareClicked: () {  },
                          ),
                      }),
                ];
              },
              body: switch (state) {
                ProfilData() => ProfileDetailsWidget(user: state.user),
                ProfileInit() => const Center(child: CircularProgressIndicator()),
                ProfileError() => ErrorScreen(
                    onRetryClicked: () => {
                      /*TODO*/
                    },
                  ),
              },
            ),
          );
        },
      )),
    );
  }

  _showMenuModal(BuildContext context) {
    showModalBottomSheet(
      showDragHandle: true,
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) => ProfileMenuModal(
        onSigneOutClicked: () => context.read<AuthenticationBloc>().add(const AuthenticationEvent.signedOut()),
      ),
    );
  }
}
