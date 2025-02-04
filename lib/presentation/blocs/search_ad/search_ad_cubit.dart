import 'dart:async';

import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/ad/ad_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/repositories/ad_repository.dart';
import 'package:assoshare/domain/repositories/filter_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_ad_cubit.freezed.dart';

part 'search_ad_state.dart';

@injectable
class SearchAdCubit extends Cubit<SearchAdState> {
  final AdRepository _adRepository;
  final FilterRepository _filterRepository;
  static const _debounceTime = 200;

  SearchAdCubit(this._adRepository, this._filterRepository) : super(const SearchAdState.none());

  Timer? _debounce;

  void onSearchClicked() {
    // If user already on result page we are prefilling query.
    if (state case SearchAdDisplayResults(:final query)) {
      emit(SearchAdState.searching(query: query, suggestions: []));
    } else {
      emit(const SearchAdState.emptyQuery());
    }
  }

  void onQueryChanged(String newQuery) async {
    // If query is empty, return user search history.
    // TODO: fetch history.
    if (newQuery.isEmpty) {
      return emit(const SearchAdState.emptyQuery());
    }

    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: _debounceTime), () async {
      final result = await _adRepository.getAdSuggestions(newQuery);
      result.when(success: (suggestions) {
        if (suggestions.isEmpty) {
          emit(SearchAdState.suggestionEmpty(query: newQuery));
        } else {
          emit(SearchAdState.searching(query: newQuery, suggestions: suggestions));
        }
      }, failure: (error) {
        emit(SearchAdState.error(query: newQuery));
      });
    });
  }

  Future<void> onSearchStarted(String query) async {
    emit(const SearchAdState.loading());
    // TODO: PAGINATION.
    final filter = await _filterRepository.retrieveFilters();
    final result = await _adRepository.searchAd(query, 0, filter);

    result.when(success: (ads) {
      if (ads.isEmpty) {
        emit(SearchAdState.emptyResult(query: query, filter: filter));
      } else {
        emit(SearchAdState.displayResults(query: query, result: ads, filter: filter));
      }
    }, failure: (error) {
      emit(SearchAdState.error(query: query));
    });
  }

  void onFilterChanged() {
    // Restart search to update filters.
    switch (state) {
      case SearchAdDisplayResults(:final query) || SearchAdEmptyResult(:final query):
        onSearchStarted(query);
      default:
        return;
    }
  }

  void onSearchCancel() {
    emit(const SearchAdState.none());
  }
}
