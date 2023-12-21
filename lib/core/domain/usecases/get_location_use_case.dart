import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocationUseCase {
  Future<Position> execute() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }
}
