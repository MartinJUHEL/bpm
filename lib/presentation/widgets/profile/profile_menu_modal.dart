import 'package:assoshare/app/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileMenuModal extends StatelessWidget {
  final VoidCallback onSigneOutClicked;

  const ProfileMenuModal({super.key, required this.onSigneOutClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              onSigneOutClicked();
              Navigator.pop(context);
            },
            title: const Text('logout').tr(),
            leading: const Icon(Icons.logout_outlined),
          ),
          const Gap(Dimens.paddingRegular),
        ],
      ),
    );
  }
}
