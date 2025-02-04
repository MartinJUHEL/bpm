import 'package:assoshare/domain/entities/filter/filter_entity.dart';

abstract class FilterRepository {
  Future<FilterEntity> retrieveFilters();

  Future<void> saveFilters(FilterEntity filter);
  Future<void> clearLocationFilters();
}
