import 'package:bpm/app/appTextStyles.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/presentation/blocs/publish_ad_search_city_bloc/publish_ad_search_city_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CitySearchDelegate extends SearchDelegate<String?> {
  final Bloc<PublishAdSearchCityEvent, PublishAdSearchCityState>
      publishSearchCityBloc;
  final BuildContext context;

  CitySearchDelegate({
    required this.publishSearchCityBloc,
    required this.context,
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.searchFieldDecorationTheme,
    super.keyboardType,
    super.textInputAction = TextInputAction.search,
  });

  @override
  TextStyle get searchFieldStyle => AppTextStyles.appBarTitleStyle(context);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      query.isEmpty
          ? IconButton(
              color: Theme.of(context).colorScheme.primary,
              tooltip: 'locate',
              icon: const Icon(Icons.location_searching),
              onPressed: () {
                //todo
              },
            )
          : IconButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                if (query.isEmpty) return close(context, null);
                query = '';
              },
              icon: const Icon(Icons.close),
            )
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
    if (query.isEmpty) {
      return const SizedBox();
    } else {
      publishSearchCityBloc.add(PublishAdSearchCityEvent.citySearched(query));
      return BlocBuilder(
        bloc: publishSearchCityBloc,
        builder: (BuildContext context, PublishAdSearchCityState state) {
          switch (state.status) {
            case PublishAdSearchCityStatus.initial:
              {
                return const SizedBox();
              }
            case PublishAdSearchCityStatus.loading:
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            case PublishAdSearchCityStatus.failure:
              {
                //todo implements error
                return const Text('Error');
              }
            case PublishAdSearchCityStatus.success:
              {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.location_city),
                      title: Text(state.suggestions[index]),
                      onTap: () => close(context, state.suggestions[index]),
                    );
                  },
                  itemCount: state.suggestions.length,
                );
              }
          }
        },
      );
    }
  }
}
