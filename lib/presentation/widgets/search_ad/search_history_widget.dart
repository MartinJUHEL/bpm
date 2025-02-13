import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/presentation/blocs/search_ad/search_ad_cubit.dart';
import 'package:assoshare/presentation/widgets/common/deletable_list_tile.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchHistoryWidget extends StatelessWidget {
  const SearchHistoryWidget({
    super.key,
    required this.searchHistory,
  });

  final List<String> searchHistory;

  @override
  Widget build(BuildContext context) {
    if (searchHistory.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: searchHistory.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Text(
              'searchHistory',
            ).tr();
          }
          final query = searchHistory[index - 1];
          return DeletableListTile(
              query: query,
              onRemoveClicked: () => context.read<SearchAdCubit>().removeFromHistory(query),
              onPressed: () => context.read<SearchAdCubit>().onSearchStarted(query),
              leadingIcon: Icons.history);
        },
      ),
    );
  }
}
