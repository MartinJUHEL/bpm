import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/core/domain/usecases/base_usecase.dart';
import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:assoshare/domain/repositories/address_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchCityByLatLongUseCase implements BaseUseCase<CityEntity, LatLong> {
  const SearchCityByLatLongUseCase(this.repository);

  final AddressRepository repository;

  @override
  Future<Result<CityEntity>> call(LatLong latLong) async => repository.searchCityFromLatLong(latLong);
}
