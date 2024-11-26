import 'package:assoshare/core/domain/entities/lat_long_entity.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/core/domain/usecases/base_usecase.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:assoshare/features/searchaddress/domain/repositories/address_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SearchCityUseCase
    implements BaseUseCase<List<CityEntity>, SearchCityUseCaseParams> {
  const SearchCityUseCase(this.repository);

  final AddressRepository repository;

  @override
  Future<Result<List<CityEntity>>> call(SearchCityUseCaseParams params) async =>
      repository.searchCity(params.query, params.latLong);
}

class SearchCityUseCaseParams {
  const SearchCityUseCaseParams({required this.query, this.latLong});

  final String query;
  final LatLong? latLong;
}
