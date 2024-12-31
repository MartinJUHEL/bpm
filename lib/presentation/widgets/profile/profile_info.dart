import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/date_ext.dart';
import 'package:assoshare/domain/entities/user/user_entity.dart';
import 'package:assoshare/presentation/widgets/common/icon_with_text_horizontal.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final UserEntity user;

  const ProfileInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconWithTextHorizontal(
          text: 'memberDate'.tr(args: [user.creationDate.format(yMMMMd)]),
          icon: const Icon(
            Icons.history,
          ),
          textStyle: context.textTheme.bodyMedium,
        )
      ],
    );
  }
}
