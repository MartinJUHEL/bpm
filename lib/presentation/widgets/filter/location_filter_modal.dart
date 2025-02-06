import 'package:assoshare/app/colors.dart';
import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/presentation/blocs/filter/filter_cubit.dart';
import 'package:assoshare/presentation/blocs/search_address/search_city_cubit.dart';
import 'package:assoshare/presentation/widgets/common/custom_checkbox_widget.dart';
import 'package:assoshare/presentation/widgets/common/custom_textfield.dart';
import 'package:assoshare/presentation/widgets/filter/location_radius_slider_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LocationFilterModal extends StatefulWidget {
  const LocationFilterModal({super.key, required this.onCloseClicked});

  final VoidCallback onCloseClicked;
  static const _heightPercent = 0.95;

  @override
  State<LocationFilterModal> createState() => _LocationFilterModalState();
}

class _LocationFilterModalState extends State<LocationFilterModal> {
  final _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final widgetHeight = MediaQuery.of(context).copyWith().size.height * LocationFilterModal._heightPercent;
    return SizedBox(
      height: widgetHeight,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => locator<SearchCityCubit>()..init()),
          BlocProvider(create: (context) => locator<FilterCubit>()..init()),
        ],
        child: BlocConsumer<SearchCityCubit, SearchCityState>(
          listener: (context, searchState) {
            // Update search bar when user clicks on clear.
            if (searchState.query.isEmpty) {
              _searchTextController.text = searchState.query;
            }

            // Update filter when user has selected a city.
            final selectedCity = searchState.selectedCity;
            if (selectedCity != null) {
              context.read<FilterCubit>().onCityChanged(selectedCity);
            }
          },
          builder: (context, searchState) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Gap(Dimens.paddingRegular),
                _buildHeader(context),
                const Gap(Dimens.paddingSmall),
                const Divider(),
                const Gap(Dimens.paddingSmall),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
                  child: CustomTextField(
                    onQueryChanged: (query) => context.read<SearchCityCubit>().onQueryChanged(query),
                    searchTextController: _searchTextController,
                    placeholder: 'searchCity'.tr(),
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: Dimens.paddingSmall),
                      child: Icon(
                        Icons.location_on_outlined,
                        size: Dimens.iconMedium,
                      ),
                    ),
                    suffix: _buildSuffixIcon(context, searchState),
                  ),
                ),
                const Gap(Dimens.paddingRegular),
                // Show even list of suggestions if user is searching city else filter info.
                searchState.query.isNotEmpty ? _buildCitySuggestionsList(searchState) : _buildFilterDetails(context)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
      child: Stack(
        children: <Widget>[
          Center(
            child: Text('locationFilterTitle', style: context.textTheme.titleMedium).tr(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: widget.onCloseClicked,
              icon: const Icon(
                Icons.close,
                size: Dimens.iconLarge,
              ),
              iconSize: Dimens.iconLarge,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCitySuggestionsList(SearchCityState searchState) {
    return Expanded(
      child: ListView.builder(
        itemCount: searchState.suggestions.length,
        itemBuilder: (context, index) {
          final CityEntity city = searchState.suggestions[index];
          return ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: Text(city.displayCity()),
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<SearchCityCubit>().selectCity(city);
            },
          );
        },
      ),
    );
  }

  Widget _buildFilterDetails(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterEntity?>(builder: (context, filter) {
      if (filter == null) {
        return const SizedBox.shrink();
      } else {
        return Expanded(
          child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<FilterCubit>().onClearFilterClicked();
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('clear').tr(),
                  ),
                  const Gap(Dimens.paddingLarge),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        await context.read<FilterCubit>().onFilterConfirmed(filter);
                        if (context.mounted) {
                          Navigator.of(context).pop(true);
                        }
                      },
                      child: const Text('confirm').tr(),
                    ),
                  )
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingPage),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filter.displayFilterLocationString(),
                      style: context.textTheme.titleMedium,
                    ),
                    const Gap(Dimens.paddingRegular),
                    CustomCheckboxWidget(
                      title: 'searchWithoutLimit'.tr(),
                      textStyle: context.textTheme.bodyMedium,
                      onChanged: (value) => context.read<FilterCubit>().onSearchWithoutLimitChanged(value),
                      value: filter.locationRadius == null,
                      scale: 0.8,
                    ),
                    const Gap(Dimens.paddingSmall),
                    if (filter.locationRadius != null)
                      LocationRadiusSliderWidget(
                        filter: filter,
                        onSliderChanged: (value) =>
                            context.read<FilterCubit>().onRadiusChanged(filter.getRadiusFromIndex(value.round())),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    });
  }

  Widget _buildSuffixIcon(BuildContext context, SearchCityState searchState) {
    if (searchState.locationLoading) {
      return const Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: SizedBox(
          width: Dimens.iconSmall,
          height: Dimens.iconSmall,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    final IconData icon = searchState.query.isNotEmpty
        ? Icons.clear
        : Icons.location_searching;

    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () => searchState.query.isNotEmpty
          ? context.read<SearchCityCubit>().onQueryCleared()
          : context.read<SearchCityCubit>().searchCityFromUserLocation(),
      icon: Icon(
        icon,
        size: Dimens.iconMedium,
        color: AppColors.black,
      ),
    );
  }
}
