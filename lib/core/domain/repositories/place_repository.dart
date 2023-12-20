
abstract class IPlaceRepository {
  Future<List<String>> fetchCitySuggestions(
      String sessionToken, String input, String lang, String country);
}