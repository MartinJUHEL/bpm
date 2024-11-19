import 'package:assoshare/core/domain/usecases/check_location_permission_use_case.dart';
import 'package:assoshare/core/domain/usecases/request_location_permission_use_case.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocationUseCase {
  final CheckLocationPermissionUseCase _checkLocationPermissionUseCase;
  final RequestLocationPermissionUseCase _requestLocationPermissionUseCase;

  GetLocationUseCase(this._checkLocationPermissionUseCase,
      this._requestLocationPermissionUseCase);

  //todo create locationresult
  Future<Position?> execute() async {
    bool isLocationGranted = await _checkLocationPermissionUseCase.execute();
    if (!isLocationGranted) {
      isLocationGranted = await _requestLocationPermissionUseCase.execute();
      if (isLocationGranted) {
        return await Geolocator.getCurrentPosition();
      } else {
        return null;
      }
    } else {
      return await Geolocator.getCurrentPosition();
    }
  }
}
