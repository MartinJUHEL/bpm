import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/widgets/common/user_icon_with_name_widget.dart';
import 'package:flutter/material.dart';

class UserProfileHeader extends StatelessWidget {
  final String username;
  final String? photoUrl;
  final VoidCallback onClicked;
  final VoidCallback onShareClicked;

  const UserProfileHeader({
    super.key,
    required this.username,
    this.photoUrl,
    required this.onClicked,
    required this.onShareClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => onClicked(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserIconWithNameWidget(
                username: username,
                photoUrl: photoUrl,
                userNameTextStyle: context.textTheme.titleMedium,
                avatarTextStyle: context.textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(onPressed: onShareClicked, icon: const Icon(Icons.share))
      ],
    );
  }
}
