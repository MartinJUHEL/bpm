import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserIconWithNameWidget extends StatelessWidget {
  const UserIconWithNameWidget(
      {super.key,
      this.avatarRadius = _avatarRadius,
      required this.username,
      required this.photoUrl,
      this.avatarTextStyle,
      this.userNameTextStyle,
      this.padding = Dimens.paddingRegular});

  final String username;
  final String? photoUrl;
  final double padding;
  final double avatarRadius;
  final TextStyle? avatarTextStyle;
  final TextStyle? userNameTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        photoUrl != null
            ? CircleAvatar(radius: avatarRadius, backgroundImage: NetworkImage(photoUrl!))
            : CircleAvatar(
                radius: avatarRadius,
                backgroundColor: context.colorScheme.primary,
                child: Text(
                  username[0],
                  style: avatarTextStyle,
                )),
        Gap(padding),
        Text(
          username,
          style: userNameTextStyle,
        )
      ],
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double _avatarRadius = 15;
