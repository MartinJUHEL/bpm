abstract class SearchHistoryRepository {
  Future<void> addSearch(String query);

  Future<List<String>> getSearchHistory();

  Future<void> clearHistory();

  Future<void> removeSearch(String query);
}
