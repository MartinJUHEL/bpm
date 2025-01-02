import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileHeader extends StatelessWidget {
  final String username;
  final String? photoUrl;
  final VoidCallback onClicked;
  final double avatarRadius;
  final bool isDropdown;
  final TextStyle? avatarTextStyle;
  final TextStyle? userNameTextStyle;
  final double padding;

  const ProfileHeader(
      {super.key,
      required this.username,
      this.photoUrl,
      required this.onClicked,
      this.avatarRadius = _avatarRadius,
      required this.isDropdown,
      this.avatarTextStyle,
      this.userNameTextStyle,
      this.padding = Dimens.paddingRegular});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClicked(),
      child: Row(
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
          ),
          if (isDropdown)
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double _avatarRadius = 15;
