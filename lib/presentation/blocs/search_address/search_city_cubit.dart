import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:assoshare/domain/usecases/get_location_use_case.dart';
import 'package:assoshare/core/utils/debouncer.dart';
import 'package:assoshare/domain/usecases/search_adress/search_city_by_lat_long_usecase.dart';
import 'package:assoshare/domain/usecases/search_adress/search_city_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_city_cubit.freezed.dart';
part 'search_city_state.dart';

@injectable
class SearchCityCubit extends Cubit<SearchCityState> {
  SearchCityCubit(
      {required this.searchCityUseCase, required this.searchCityByLatLongUseCase, required this.getLocationUseCase})
      : super(const SearchCityState());

  final SearchCityUseCase searchCityUseCase;
  final SearchCityByLatLongUseCase searchCityByLatLongUseCase;
  final GetLocationUseCase getLocationUseCase;

  final _debouncer = Debouncer(milliseconds: 400);

  LatLong? _userLocation;

  Future<void> init() async {
    _userLocation = await _askAndGetUserLocation(forceAsk: false);
  }

  void onQueryChanged(String query) {
    if (query.length >= 3) {
      emit(state.copyWith(isLoading: true));
      _debouncer.run(() {
        _searchCity(query);
      });
    }
  }

  void onSearchStarted() {
    emit(state.copyWith(selectedCity: null, locationLoading: false, isLoading: false));
  }

  Future<void> searchCityFromUserLocation() async {
    emit(state.copyWith(locationLoading: true));
    final userLocation = await _askAndGetUserLocation(forceAsk: true);
    if (userLocation == null) return;
    final result = await searchCityByLatLongUseCase(userLocation);
    result.when(
        success: (city) => emit(state.copyWith(selectedCity: city, locationLoading: false)),
        failure: (_) => state.copyWith(hasError: true, locationLoading: false));
  }

  void selectCity(CityEntity city) {
    emit(state.copyWith(selectedCity: city));
  }

  ///////////////////////////////////////////////////////////////////////////
  // PRIVATE METHODS
  ///////////////////////////////////////////////////////////////////////////

  Future<void> _searchCity(query) async {
    final result = await searchCityUseCase.call(SearchCityUseCaseParams(query: query, latLong: _userLocation));

    result.when(
        success: (suggestions) => emit(state.copyWith(suggestions: suggestions, isLoading: false)),
        failure: (_) => state.copyWith(hasError: true, isLoading: false));
  }

  /// Ask user location, if [forceAsk] true show dialog if disabled or permission denied.
  Future<LatLong?> _askAndGetUserLocation({required bool forceAsk}) async {
    final userLocationResult = await getLocationUseCase.execute();
    _userLocation = switch (userLocationResult) {
      LocationSuccess() => userLocationResult.latLong,
      LocationDisabled() => null, //todo handle popup
      LocationPermissionDenied() => null, //todo handle popup
      LocationPermissionDeniedForever() => null, //todo handle popup
    };
    return _userLocation;
  }
}
