import 'package:assoshare/data/datasources/search_history_local_data_source.dart';

import 'package:assoshare/domain/repositories/search_history_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchHistoryRepository)
class SearchHistoryRepositoryImpl implements SearchHistoryRepository {
  final SearchHistoryLocalDataSource _localDataSource;

  SearchHistoryRepositoryImpl(this._localDataSource);

  @override
  Future<void> addSearch(String query) async {
    await _localDataSource.addSearch(query);
  }

  @override
  Future<List<String>> getSearchHistory() {
    return _localDataSource.getSearchHistory();
  }

  @override
  Future<void> clearHistory() async {
    await _localDataSource.clearHistory();
  }

  @override
  Future<void> removeSearch(String query) async {
    await _localDataSource.removeSearch(query);
  }
}
