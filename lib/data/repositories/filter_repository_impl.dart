import 'package:assoshare/data/datasources/filter_local_data_source.dart';
import 'package:assoshare/data/models/filter/filter_model.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/repositories/filter_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FilterRepository)
final class FilterRepositoryImpl implements FilterRepository {
  FilterRepositoryImpl(this._filterLocalDataSource);

  final FilterLocalDataSource _filterLocalDataSource;

  @override
  Future<FilterEntity> retrieveFilters() async {
    final filterModel = await _filterLocalDataSource.retrieveFilters();
    if (filterModel == null) {
      return FilterEntity.defaultFilter;
    }
    return filterModel.toEntity();
  }

  @override
  Future<void> saveFilters(FilterEntity filter) {
    final filterModel = FilterModel.fromEntity(filter);
    return _filterLocalDataSource.saveFilters(filterModel);
  }

  @override
  Future<void> clearLocationFilters() {
    return _filterLocalDataSource.clearLocationFilters();
  }
}
