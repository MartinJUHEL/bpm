import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract interface class AddressRepository {
  /// Searches for a city by name from [query], [lat] and [long].
  Future<Result<List<CityEntity>>> searchCity(
      String query, LatLong? latLong);

  /// Searches a city by name from [lat] and [long].
  Future<Result<CityEntity>> searchCityFromLatLong(LatLong latLong);
}
