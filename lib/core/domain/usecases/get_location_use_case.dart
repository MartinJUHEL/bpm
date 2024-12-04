import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'get_location_use_case.freezed.dart';

@lazySingleton
class GetLocationUseCase {
  const GetLocationUseCase();

  Future<LocationResult> execute() async {
// Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled return an error message
      return const LocationResult.disabled();
    }

    // Check location permissions
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const LocationResult.permissionDenied();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return const LocationResult.permissionDeniedForever();
    }

    // If permissions are granted, return the current location
    final position = await Geolocator.getCurrentPosition();
    return LocationResult.success(latLong: LatLong(lat: position.latitude, long: position.longitude));
  }
}

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
sealed class LocationResult with _$LocationResult {
  const factory LocationResult.disabled() = LocationDisabled;

  const factory LocationResult.permissionDenied() = LocationPermissionDenied;

  const factory LocationResult.permissionDeniedForever() = LocationPermissionDeniedForever;

  const factory LocationResult.success({required LatLong latLong}) = LocationSuccess;
}
