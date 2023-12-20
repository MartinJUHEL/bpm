import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/usecases/get_city_suggestions_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'publish_ad_search_city_event.dart';

part 'publish_ad_search_city_state.dart';

part 'publish_ad_search_city_bloc.freezed.dart';

@injectable
class PublishAdSearchCityBloc
    extends Bloc<PublishAdSearchCityEvent, PublishAdSearchCityState> {
  final GetCitySuggestionsUseCase _getCitySuggestionsUseCase;

  PublishAdSearchCityBloc(this._getCitySuggestionsUseCase)
      : super(const PublishAdSearchCityState()) {
    on<PublishAdSearchCityEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
          started: (String sessionToken) => _onStarted(emit, sessionToken),
          citySearched: (String query) => _onCitySearched(emit, query));
    });
  }

  void _onStarted(Emitter<PublishAdSearchCityState> emit, String sessionToken) {
    emit(state.copyWith(sessionToken: sessionToken));
  }

  Future<void> _onCitySearched(
      Emitter<PublishAdSearchCityState> emit, String query) async {
    emit(state.copyWith(status: PublishAdSearchCityStatus.loading));
    try {
      List<String> suggestions =
          await _getCitySuggestionsUseCase.execute(state.sessionToken, query);
      emit(state.copyWith(
          query: query,
          suggestions: suggestions,
          status: PublishAdSearchCityStatus.success));
    } catch (e, stacktrace) {
      logger.e('$e \n ${stacktrace.toString()}');
      emit(state.copyWith(status: PublishAdSearchCityStatus.failure));
    }
  }
}
