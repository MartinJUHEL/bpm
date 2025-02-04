import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/callback_utils.dart';
import 'package:assoshare/presentation/widgets/search_ad/suggestion_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SuggestionsListWidget extends StatelessWidget {
  const SuggestionsListWidget({super.key, required this.suggestions, required this.onSuggestionTap});

  final List<String> suggestions;
  final StringCallback onSuggestionTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
          scrollDirection: Axis.vertical,
          itemCount: suggestions.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Text('Suggestions').tr();
            }
            final suggestion = suggestions[index - 1];
            return SuggestionTile(title: suggestion, onTap: () => onSuggestionTap(suggestion));
          }),
    );
  }
}
