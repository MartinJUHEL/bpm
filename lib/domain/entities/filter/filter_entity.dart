import 'package:assoshare/core/utils/text_utils.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_entity.freezed.dart';

@freezed
class FilterEntity with _$FilterEntity {
  static const List<int> radiusValues = [5, 10, 20, 30, 50, 70, 100, 200];
  static const _defaultCity = 'Rennes';
  static const _defaultPostCode = '35000';

  const FilterEntity._();

  const factory FilterEntity({
    required CityEntity? city,

    /// Radius in KM.
    final int? locationRadius,
  }) = _FilterEntity;

  static FilterEntity defaultFilter = FilterEntity(
      city: const CityEntity(
        postcode: _defaultPostCode,
        city: _defaultCity,
        latLong: LatLong(lat: 48.083328, long: 1.68333),
      ),
      locationRadius: radiusValues.first);

  String displayFilterLocationString() {
    if (locationRadius != null) {
      return '${city?.displayCity()} - ${displayRadiusString()}';
    } else {
      return city?.displayCity() ?? 'allOverFrance'.tr();
    }
  }

  String? displayRadiusString() {
    if (locationRadius == null) {
      return empty;
    } else {
      return 'km'.tr(args: [locationRadius.toString()]);
    }
  }

  int getIndexOfRadius() {
    return radiusValues.indexOf(locationRadius ?? radiusValues.first);
  }

  int getRadiusFromIndex(int index) {
    return radiusValues[index];
  }
}
