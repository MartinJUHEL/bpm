import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/features/searchaddress/data/datasources/address_remote_data_source.dart';
import 'package:assoshare/features/searchaddress/data/models/address_model.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:assoshare/features/searchaddress/domain/repositories/address_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressRepository)
final class AddressRepositoryImpl extends BaseRepository implements AddressRepository {
  final AddressRemoteDataSource _addressRemoteDataSource;

  AddressRepositoryImpl(this._addressRemoteDataSource, super._genericErrorTrigger, super._connectivityInfo);

  @override
  Future<Result<List<CityEntity>>> searchCity(String query, LatLong? latLong) async {
    return safeCall(
        action: () => _addressRemoteDataSource.searchCityByName(query, latLong?.lat, latLong?.long),
        transform: (dto) => AddressResultModel.fromJson(dto).toCities());
  }

  @override
  Future<Result<CityEntity>> searchCityFromLatLong(LatLong latLong) async {
    return safeCall(
        action: () => _addressRemoteDataSource.searchCityByLatLong(latLong.lat, latLong.long),
        transform: (dto) => AddressResultModel.fromJson(dto).toCities().first);
  }
}
