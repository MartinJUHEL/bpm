import 'package:assoshare/app/appTextStyles.dart';
import 'package:assoshare/app/constants.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:assoshare/features/searchaddress/presentation/blocs/publish_ad_search_city_bloc/search_city_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CitySearchDelegate extends SearchDelegate<CityEntity?> {
  final SearchCityCubit searchCityCubit;
  final BuildContext parentContext;

  CitySearchDelegate({
    required this.searchCityCubit,
    required this.parentContext,
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.searchFieldDecorationTheme,
    super.keyboardType,
    super.textInputAction = TextInputAction.search,
  });

  @override
  TextStyle get searchFieldStyle => AppTextStyles.appBarTitleStyle(parentContext);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      BlocBuilder(
          bloc: searchCityCubit,
          builder: (context, SearchCityState state) {
            if (state.locationLoading) {
              return Container(
                  margin: const EdgeInsets.all(Constants.smallPadding),
                  height: Constants.smallIconSize,
                  width: Constants.smallIconSize,
                  child: const CircularProgressIndicator());
            } else {
              return query.isEmpty
                  ? IconButton(
                      color: Theme.of(context).colorScheme.primary,
                      tooltip: 'locate',
                      icon: const Icon(Icons.location_searching),
                      onPressed: () => searchCityCubit.searchCityFromUserLocation(),
                    )
                  : IconButton(
                      color: Theme.of(context).colorScheme.primary,
                      onPressed: () => query = '',
                      icon: const Icon(Icons.close),
                    );
            }
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        tooltip: 'Back',
        color: Theme.of(context).colorScheme.primary,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        },
      );

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    searchCityCubit.onQueryChanged(query);
    return BlocConsumer(
      bloc: searchCityCubit,
      listener: (context, SearchCityState state) {
        final selectedCity = state.selectedCity;
        if (selectedCity != null) {
          close(context, selectedCity);
        }
      },
      builder: (context, SearchCityState state) {
        return _buildBody(state);
      },
    );
  }

  Widget _buildBody(SearchCityState state) {
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (query.length <= 2) {
      return Center(child: Text(tr('queryTooShortMessage')));
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          CityEntity city = state.suggestions[index];
          return ListTile(
              leading: const Icon(Icons.location_city),
              title: Text(city.displayCity()),
              onTap: () => searchCityCubit.selectCity(city));
        },
        itemCount: state.suggestions.length,
      );
    }
  }
}
