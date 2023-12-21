import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/core/domain/entities/city_model.dart';
import 'package:bpm/core/domain/entities/common_status.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/usecases/get_city_from_location_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/get_city_suggestions_use_case.dart';
import 'package:bpm/publish_ad/domain/usecases/get_location_from_city_use_case.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';

part 'publish_ad_search_city_event.dart';

part 'publish_ad_search_city_state.dart';

part 'publish_ad_search_city_bloc.freezed.dart';

@injectable
class PublishAdSearchCityBloc
    extends Bloc<PublishAdSearchCityEvent, PublishAdSearchCityState> {
  final GetCitySuggestionsUseCase _getCitySuggestionsUseCase;
  final GetCityFromLocationUseCase _getCityFromLocationUseCase;
  final GetLocationFromCityUseCase _getLocationFromCityUseCase;

  PublishAdSearchCityBloc(this._getCitySuggestionsUseCase,
      this._getCityFromLocationUseCase, this._getLocationFromCityUseCase)
      : super(const PublishAdSearchCityState()) {
    on<PublishAdSearchCityEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
          started: (String sessionToken) => _onStarted(emit, sessionToken),
          citySearched: (String query) => _onCitySearched(emit, query),
          locationRequested: () => _onLocationRequested(emit),
          suggestionClicked: (String suggestion) =>
              _onSuggestionClicked(emit, suggestion));
    });
  }

  void _onStarted(Emitter<PublishAdSearchCityState> emit, String sessionToken) {
    emit(state.copyWith(sessionToken: sessionToken));
  }

  Future<void> _onCitySearched(Emitter<PublishAdSearchCityState> emit,
      String query) async {
    emit(state.copyWith(status: SearchCityStatus.loading));
    try {
      List<String> suggestions =
      await _getCitySuggestionsUseCase.execute(state.sessionToken, query);
      emit(state.copyWith(
          query: query,
          suggestions: suggestions,
          status: SearchCityStatus.suggestionFound));
    } catch (e, stacktrace) {
      logger.e('$e \n ${stacktrace.toString()}');
      emit(state.copyWith(status: SearchCityStatus.failure));
    }
  }

  Future<void> _onLocationRequested(
      Emitter<PublishAdSearchCityState> emit) async {
    try {
      CityModel? city = await _getCityFromLocationUseCase.execute();
      if (city != null) {
        emit(state.copyWith(
            query: city.name,
            city: city,
            status: SearchCityStatus.located,
            errorMessage: ''));
      } else {
        emit(state.copyWith(
            status: SearchCityStatus.failure,
            errorMessage: tr('locationError')));
      }
    } catch (e, stacktrace) {
      logger.e('$e \n ${stacktrace.toString()}');
      emit(state.copyWith(
          status: SearchCityStatus.failure, errorMessage: tr('locationError')));
    }
  }

  Future<void> _onSuggestionClicked(Emitter<PublishAdSearchCityState> emit,
      String suggestion) async {
    try {
      Location location = await _getLocationFromCityUseCase.execute(suggestion);
      emit(state.copyWith(status: SearchCityStatus.success,
          city: CityModel(name: suggestion,
              lat: location.latitude,
              lng: location.longitude)));
    } catch (e, stacktrace) {
      logger.e('$e \n ${stacktrace.toString()}');
      emit(state.copyWith(
          status: SearchCityStatus.failure, errorMessage: tr('locationError')));
    }
  }
}
