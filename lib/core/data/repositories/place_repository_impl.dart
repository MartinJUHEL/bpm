import 'package:bpm/core/data/services/remote/place_api_service.dart';
import 'package:bpm/core/domain/repositories/place_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IPlaceRepository)
class PlaceRepositoryImpl implements IPlaceRepository {
  final PlaceApiService _placeApiService;

  PlaceRepositoryImpl(this._placeApiService);

  @override
  Future<List<String>> fetchCitySuggestions(
      String sessionToken, String query, String lang, String country) {
    return _placeApiService.fetchCitySuggestions(
        sessionToken, query, lang, country);
  }
}
