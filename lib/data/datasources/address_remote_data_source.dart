import 'package:assoshare/core/data/api_constants.dart';
import 'package:assoshare/core/data/remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@immutable
abstract interface class AddressRemoteDataSource {
  /// Searches for a city by name from [query] near [lat] and [long].
  Future<dynamic> searchCityByName(String query, double? lat, double? long);

  /// Searches for a city by name from [lat] and [long].
  Future<dynamic> searchCityByLatLong(double lat, double long);
}

@LazySingleton(as: AddressRemoteDataSource)
final class AddressRemoteDataSourceImpl extends RemoteDataSource implements AddressRemoteDataSource {
  AddressRemoteDataSourceImpl({required super.dio});

  /// Searches for a city by name from [query], [lat] and [long].
  @override
  Future searchCityByName(String query, double? lat, double? long) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.searchAddressGouvPath,
      queryParameters: {'q': query, 'type': _cityType, 'lat': lat, 'lon': long, 'limit': _searchLimit},
    );
  }

  /// Searches for a city by name from [lat] and [long].
  @override
  Future searchCityByLatLong(double lat, double long) {
    return performGetRequestApi(
      apiEndpoint: ApiConstants.reverseAddressGouvPath,
      queryParameters: {'lat': lat, 'lon': long, 'limit': _searchLimit},
    );
  }
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const String _cityType = "municipality";
const int _searchLimit = 10;
