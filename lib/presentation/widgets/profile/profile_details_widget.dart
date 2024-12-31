import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/presentation/blocs/list_ads/list_ads_cubit.dart';
import 'package:assoshare/presentation/blocs/profile/profile_cubit.dart';
import 'package:assoshare/presentation/widgets/profile/profile_ads.dart';
import 'package:assoshare/presentation/widgets/profile/profile_info.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ProfileDetailsWidget extends StatelessWidget {
  final UserEntity user;

  const ProfileDetailsWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ListAdsCubit>()..fetchAds(user.uid),
      child: Builder(builder: (blocContext) {
        return RefreshIndicator(
          onRefresh: () => Future.wait(
              [blocContext.read<ProfileCubit>().refresh(), blocContext.read<ListAdsCubit>().fetchAds(user.uid)]),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
              child: Column(
                children: [
                  const Gap(Dimens.paddingLarge),
                  ProfileInfo(user: user),
                  const Gap(Dimens.paddingRegular),
                  const Divider(),
                  const Gap(Dimens.paddingRegular),
                  ProfileAds(
                      uid: user.uid,
                      onMoreClicked: (adId) => _showAdMenuModal(
                            context: blocContext,
                            onDeleteClicked: () => blocContext.read<ListAdsCubit>().deleteAd(adId),
                            onEditClicked: () {
                              /*TODO*/
                            },
                          )),
                  const Gap(Dimens.paddingLarge)
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  _showAdMenuModal(
      {required BuildContext context, required VoidCallback onEditClicked, required VoidCallback onDeleteClicked}) {
    showModalBottomSheet(
        showDragHandle: true,
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (BuildContext modalContext) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("edit").tr(),
                onTap: () {
                  onEditClicked();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text("delete").tr(),
                onTap: () {
                  onDeleteClicked();
                  Navigator.pop(context);
                },
              ),
              const Gap(Dimens.paddingRegular)
            ],
          );
        });
  }
}
