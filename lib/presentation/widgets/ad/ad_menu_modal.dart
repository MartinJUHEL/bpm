import 'package:assoshare/app/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdMenuModal extends StatelessWidget {
  const AdMenuModal({super.key, required this.onEditClicked, required this.onDeleteClicked});

  final VoidCallback onEditClicked;
  final VoidCallback onDeleteClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text("edit").tr(),
          onTap: () => onEditClicked(),
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: const Text("delete").tr(),
          onTap: () => onDeleteClicked(),
        ),
        const Gap(Dimens.paddingRegular)
      ],
    );
  }
}
