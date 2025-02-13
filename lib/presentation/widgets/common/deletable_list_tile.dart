import 'package:flutter/material.dart';

class DeletableListTile extends StatelessWidget {
  const DeletableListTile(
      {super.key,
      required this.query,
      required this.onRemoveClicked,
      required this.onPressed,
      required this.leadingIcon});

  final String query;
  final VoidCallback onRemoveClicked;
  final VoidCallback onPressed;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(query),
      leading: Icon(leadingIcon),
      trailing: IconButton(
        icon: const Icon(Icons.close),
        onPressed: onRemoveClicked,
      ),
      onTap: onPressed,
    );
  }
}
