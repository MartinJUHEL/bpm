import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/presentation/blocs/search_ad/search_ad_cubit.dart';
import 'package:assoshare/presentation/widgets/dashboard/dashboard_widget.dart';
import 'package:assoshare/presentation/widgets/search_ad/search_result_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SearchAdCubit>(),
      child: BlocConsumer<SearchAdCubit, SearchAdState>(
        listener: (context, state) {
          switch (state) {
            case SearchAdNone():
              _searchTextController.text = empty;
            case SearchAdSearching():
              _searchTextController.text = state.query;
          }
        },
        builder: (blocContext, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) async {
              if (didPop) {
                return;
              }
              switch (state) {
                case SearchAdNone():
                  context.pop();
                case SearchAdSearching():
                  blocContext.read<SearchAdCubit>().onSearchCancel();
              }
            },
            child: Scaffold(
                appBar: createSearchAppBar(blocContext, state is SearchAdSearching),
                body: SingleChildScrollView(
                  child: switch (state) {
                    SearchAdNone() => const DashboardWidget(),
                    SearchAdSearching() => const SearchResultListWidget(),
                  },
                )),
          );
        },
      ),
    );
  }

  AppBar createSearchAppBar(BuildContext context, isSearching) {
    return AppBar(
      titleSpacing: Dimens.paddingNone,
      leading: isSearching
          ? IconButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                context.read<SearchAdCubit>().onSearchCancel();
              },
              icon: const Icon(Icons.chevron_left))
          : null,
      title: Container(
        height: _searchBarHeight,
        margin: isSearching ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
        child: CupertinoTextField(
          controller: _searchTextController,
          onTap: () => context.read<SearchAdCubit>().onSearchClicked(),
          keyboardType: TextInputType.text,
          placeholder: 'Search',
          style: context.textTheme.bodyMedium,
          placeholderStyle: context.textTheme.labelMedium?.copyWith(color: context.colorScheme.secondary),
          prefix: const Padding(
            padding: EdgeInsets.fromLTRB(Dimens.paddingTiny, Dimens.paddingTiny, 0.0, Dimens.paddingTiny),
            child: Icon(
              Icons.search,
              size: Dimens.iconSmall,
              color: Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const double _searchBarHeight = 40;
