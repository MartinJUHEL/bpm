import 'package:assoshare/core/domain/entities/city_model.dart';
import 'package:assoshare/core/domain/usecases/get_location_use_case.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCityFromLocationUseCase {
  final GetLocationUseCase _getLocationUseCase;

  GetCityFromLocationUseCase(this._getLocationUseCase);

  Future<CityModel?> execute() async {
    Position? location = await _getLocationUseCase.execute();
    if (location != null) {
      List<Placemark> placemark =
          await placemarkFromCoordinates(location.latitude, location.longitude);
      String? cityName = placemark.first.locality;
      if (cityName != null) {
        return CityModel(
            name: cityName, lat: location.latitude, lng: location.longitude);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
