import 'package:assoshare/data/models/filter/filter_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@immutable
abstract interface class FilterLocalDataSource {
  Future<void> saveFilters(FilterModel filter);

  Future<FilterModel?> retrieveFilters();

  Future<void> clearLocationFilters();
}

@LazySingleton(as: FilterLocalDataSource)
final class FilterLocalDataSourceImpl implements FilterLocalDataSource {
  const FilterLocalDataSourceImpl({required this.hive});

  final HiveInterface hive;
  static const _boxName = 'filter_box';
  static const _fieldName = 'filter';

  Future<Box<FilterModel>> get _box async => await Hive.openBox<FilterModel>(_boxName);

  @override
  Future<FilterModel?> retrieveFilters() async {
    final box = await _box;
    return box.values.firstOrNull;
  }

  @override
  Future<void> saveFilters(FilterModel filter) async {
    final box = await _box;
    await box.put(_fieldName, filter);
  }

  @override
  Future<void> clearLocationFilters() async {
    final box = await _box;
    final updatedFilters = box.values.firstOrNull?.copyWith(city: null, radius: null);
    if (updatedFilters != null) {
      await box.put(_fieldName, updatedFilters);
    }
  }
}
