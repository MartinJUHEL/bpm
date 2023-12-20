import 'dart:convert';

import 'package:bpm/core/utils/logger/logger.dart';
import 'package:bpm/publish_ad/domain/usecases/get_api_key_use_case.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlaceApiService {
  final client = Client();
  final GetApiKeyUseCase _getApiKeyUseCase;

  PlaceApiService(this._getApiKeyUseCase);

  Future<List<String>> fetchCitySuggestions(
      String sessionToken, String input, String lang, String country) async {
    String key = _getApiKeyUseCase.execute();
    final Uri request = Uri.parse(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=%28regions%29&language=$lang&components=country:$country&key=$key&sessiontoken=$sessionToken');

    final response = await client.get(request);
    logger.i(
        'REQUEST : ${request.toString()} \n RESPONSE : ${response.statusCode} ${response.body}');
    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      if (result['status'] == 'OK') {
        return result['predictions']
            .map<String>((p) => '${p['description']}')
            .toList();
      }
      if (result['status'] == 'ZERO_RESULTS') {
        return [];
      }
      throw Exception(result['error_message']);
    } else {
      throw Exception('Failed to fetch suggestion');
    }
  }

//Future<PlaceModel> getPlaceDetailFromId(String placeId) async {
// if you want to get the details of the selected place by place_id
//}
}
