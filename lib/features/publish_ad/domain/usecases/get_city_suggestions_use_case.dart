import 'dart:io';

import 'package:bpm/core/domain/repositories/place_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCitySuggestionsUseCase {
  final IPlaceRepository _placeRepository;

  GetCitySuggestionsUseCase(this._placeRepository);

  Future<List<String>> execute(String sessionToken, String query) {
    final String languageCode = Platform.localeName;
    return _placeRepository.fetchCitySuggestions(
        sessionToken, query, languageCode, _contryCode);
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const String _contryCode = 'fr';
}
