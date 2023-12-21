import 'package:bpm/core/domain/entities/city_model.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocationFromCityUseCase {
  Future<Location> execute(String cityName) async {
    List<Location> locations = await locationFromAddress(cityName);
    return locations.first;
  }
}
