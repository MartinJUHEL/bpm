import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@immutable
abstract interface class SearchHistoryLocalDataSource {
  Future<void> addSearch(String query);

  Future<List<String>> getSearchHistory();

  Future<void> clearHistory();

  Future<void> removeSearch(String query);
}

@LazySingleton(as: SearchHistoryLocalDataSource)
final class SearchHistoryLocalDataSourceImpl implements SearchHistoryLocalDataSource {
  const SearchHistoryLocalDataSourceImpl({required this.hive});

  final HiveInterface hive;
  static const _boxName = 'search_history_box';
  static const _maxHistoryItems = 10;

  Future<Box<String>> get _box async => await hive.openBox<String>(_boxName);

  @override
  Future<void> addSearch(String query) async {
    final box = await _box;
    final searches = box.values.toList();
    searches.remove(query);
    searches.insert(0, query);

    if (searches.length > _maxHistoryItems) {
      searches.removeLast();
    }

    await box.clear();
    await box.addAll(searches);
  }

  @override
  Future<List<String>> getSearchHistory() async {
    final box = await _box;
    return box.values.toList();
  }

  @override
  Future<void> clearHistory() async {
    final box = await _box;
    await box.clear();
  }

  @override
  Future<void> removeSearch(String query) async {
    final box = await _box;
    final searches = box.values.toList();
    searches.remove(query);
    await box.clear();
    await box.addAll(searches);
  }
}
