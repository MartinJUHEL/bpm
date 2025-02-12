import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/repositories/filter_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class FilterCubit extends Cubit<FilterEntity?> {
  FilterCubit(this._filterRepository) : super(null);

  final FilterRepository _filterRepository;

  Future<void> init() async {
    final filter = await _filterRepository.retrieveFilters();
    emit(filter);
  }

  void onCityChanged(CityEntity city) {
    final updatedFilter = state?.copyWith(city: city) ?? FilterEntity(city: city);
    emit(updatedFilter);
  }

  void onRadiusChanged(int radius) {
    // Can't change radius if city is not selected.
    if (state == null) {
      return;
    }
    final updatedFilter = state?.copyWith(locationRadius: radius);
    emit(updatedFilter);
  }

  void onSearchWithoutLimitChanged(bool? checked) {
    if (checked == true) {
      emit(state?.copyWith(locationRadius: null));
    } else {
      emit(state?.copyWith(locationRadius: FilterEntity.defaultFilter.locationRadius));
    }
  }

  Future<void> onFilterConfirmed(FilterEntity filter) async {
    return await _filterRepository.saveFilters(filter);
  }

  Future<void> onClearFilterClicked() async {
    return await _filterRepository.clearLocationFilters();
  }
}
