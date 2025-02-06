import 'package:assoshare/data/models/city/city_model.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  @HiveType(typeId: 0, adapterName: 'FilterAdapter')
  const factory FilterModel({
    @HiveField(0) CityModel? city,
    @HiveField(2) int? radius,
  }) = _FilterModel;

  const FilterModel._();

  factory FilterModel.fromEntity(FilterEntity entity) => FilterModel(
        city: entity.city != null ? CityModel.fromEntity(entity.city!) : null,
        radius: entity.locationRadius,
      );

  FilterEntity toEntity() => FilterEntity(city: city?.toEntity(), locationRadius: radius);
}
