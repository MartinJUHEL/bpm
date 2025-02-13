import 'package:assoshare/app/constants.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/ressources/lotties.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/presentation/blocs/search_ad/search_ad_cubit.dart';
import 'package:assoshare/presentation/widgets/common/error_screen.dart';
import 'package:assoshare/presentation/widgets/common/expanded_center_widget.dart';
import 'package:assoshare/presentation/widgets/dashboard/dashboard_widget.dart';
import 'package:assoshare/presentation/widgets/filter/location_filter_modal.dart';
import 'package:assoshare/presentation/widgets/search_ad/display_search_result_widget.dart';
import 'package:assoshare/presentation/widgets/search_ad/search_ad_no_result_widget.dart';
import 'package:assoshare/presentation/widgets/search_ad/search_bar.dart';
import 'package:assoshare/presentation/widgets/search_ad/suggestion_tile.dart';
import 'package:assoshare/presentation/widgets/search_ad/suggestions_list_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../widgets/search_ad/search_history_widget.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final _searchTextController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SearchAdCubit>(),
      child: BlocConsumer<SearchAdCubit, SearchAdState>(
        listener: (context, state) {
          switch (state) {
            case SearchAdNone():
              _searchTextController.text = empty;
              _focusNode.unfocus();
            case SearchAdDisplayResults():
              _searchTextController.text = state.query;
              _focusNode.unfocus();
            default:
              break;
          }
        },
        builder: (blocContext, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) async {
              if (didPop) {
                return;
              }
              _focusNode.unfocus();
              switch (state) {
                case SearchAdNone():
                  context.pop();
                default:
                  blocContext.read<SearchAdCubit>().onSearchCancel();
              }
            },
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: createSearchAppBar(
                    blocContext, state.isSearching(), state.displayCity(), state.displayLocationFilter()),
                body: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
                      child: Divider(),
                    ),
                    const Gap(Dimens.paddingSmall),
                    switch (state) {
                      SearchAdNone() => const DashboardWidget(),
                      SearchAdSearching() => SuggestionsListWidget(
                          suggestions: state.suggestions,
                          onSuggestionTap: (suggestion) {
                            _focusNode.unfocus();
                            blocContext.read<SearchAdCubit>().onSearchStarted(suggestion);
                          }),
                      SearchAdDisplayResults() => DisplaySearchResultWidget(
                          ads: state.result,
                          onRefresh: () => blocContext.read<SearchAdCubit>().onRefresh(),
                          onNextPage: () => blocContext.read<SearchAdCubit>().onEndPageReached(),
                          totalAds: state.totalAds,
                          isNextPageLoading: state.isNextPageLoading,
                        ),
                      SearchAdSuggestionEmpty() => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
                          child: SuggestionTile(
                            title: 'searchFor'.tr(args: [state.query]),
                            onTap: () {
                              _focusNode.unfocus();
                              blocContext.read<SearchAdCubit>().onSearchStarted(state.query);
                            },
                          ),
                        ),
                      SearchAdError() => const ExpandedCenterWidget(
                            child: ErrorScreen(
                          assetPath: Constants.serverErrorAsset,
                        )),
                      SearchAdQueryEmpty() => SearchHistoryWidget(
                          searchHistory: state.searchHistory,
                        ),
                      SearchAdEmptyResult() => const SearchAdNoResultWidget(),
                      SearchAdLoading() => ExpandedCenterWidget(child: Lottie.asset(Lotties.searching)),
                    },
                  ],
                )),
          );
        },
      ),
    );
  }

  AppBar createSearchAppBar(BuildContext context, bool isSearching, bool displayCity, String locationFilterName) {
    return AppBar(
        forceMaterialTransparency: true,
        titleSpacing: Dimens.paddingNone,
        toolbarHeight: displayCity ? _appBarMaxHeight : _appBarMinHeight,
        title: AdSearchBar(
          focusNode: _focusNode,
          displayCity: displayCity,
          onCityClicked: () {
            _focusNode.unfocus();
            _showLocationFilterModal(context: context);
          },
          onSearchStarted: (query) {
            _focusNode.unfocus();
            context.read<SearchAdCubit>().onSearchStarted(query);
          },
          onBackPressed: () {
            _focusNode.unfocus();
            context.read<SearchAdCubit>().onSearchCancel();
          },
          onClearClicked: () {
            _searchTextController.text = empty;
            context.read<SearchAdCubit>().onQueryChanged(empty);
          },
          onQueryChanged: (query) => context.read<SearchAdCubit>().onQueryChanged(query),
          isSearching: isSearching,
          onTap: () => context.read<SearchAdCubit>().onSearchClicked(),
          searchTextController: _searchTextController,
          cityName: locationFilterName,
        ));
  }

  _showLocationFilterModal({required BuildContext context}) async {
    final refresh = await showModalBottomSheet(
        showDragHandle: false,
        backgroundColor: context.colorScheme.surface,
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (BuildContext modalContext) {
          return LocationFilterModal(
            onCloseClicked: () => Navigator.pop(modalContext),
          );
        });

    // Restart search with updated filters.
    if (refresh == true && context.mounted) {
      context.read<SearchAdCubit>().onFilterChanged();
    }
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const _appBarMinHeight = 70.0;
const _appBarMaxHeight = 105.0;
