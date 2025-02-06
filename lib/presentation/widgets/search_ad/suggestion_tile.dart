import 'package:flutter/material.dart';

class SuggestionTile extends StatelessWidget {
  const SuggestionTile({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.search),
      title: Text(title),
    );
  }
}
