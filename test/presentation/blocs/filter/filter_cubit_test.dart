import 'package:assoshare/domain/entities/city/city_entity.dart';
import 'package:assoshare/domain/entities/filter/filter_entity.dart';
import 'package:assoshare/domain/entities/latlong/lat_long_entity.dart';
import 'package:assoshare/domain/repositories/filter_repository.dart';
import 'package:assoshare/presentation/blocs/filter/filter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<FilterRepository>()])
import 'filter_cubit_test.mocks.dart';

void main() {
  group('FilterCubit', () {
    late FilterCubit filterCubit;
    late MockFilterRepository mockFilterRepository;

    const testCity = CityEntity(
      postcode: '75001',
      city: 'Paris',
      latLong: LatLong(lat: 48.8566, long: 2.3522),
    );

    setUp(() {
      mockFilterRepository = MockFilterRepository();
      filterCubit = FilterCubit(mockFilterRepository);
    });

    tearDown(() {
      filterCubit.close();
    });

    test('initial state should be null', () {
      expect(filterCubit.state, null);
    });

    test('init should emit default filter when repository returns null', () async {
      when(mockFilterRepository.retrieveFilters())
          .thenAnswer((_) async => FilterEntity.defaultFilter);

      await filterCubit.init();

      expect(filterCubit.state, FilterEntity.defaultFilter);
      verify(mockFilterRepository.retrieveFilters()).called(1);
    });

    test('onCityChanged should update state with new city', () {
      filterCubit.onCityChanged(testCity);

      expect(filterCubit.state?.city, testCity);
      expect(filterCubit.state?.locationRadius, null);
    });

    test('onCityChanged should update existing filter with new city', () async {
      when(mockFilterRepository.retrieveFilters())
          .thenAnswer((_) async => FilterEntity.defaultFilter);

      await filterCubit.init();
      filterCubit.onCityChanged(testCity);

      expect(filterCubit.state?.city, testCity);
      expect(filterCubit.state?.locationRadius, FilterEntity.defaultFilter.locationRadius);
    });

    test('onRadiusChanged should not update state when state is null', () {
      filterCubit.onRadiusChanged(10);

      expect(filterCubit.state, null);
    });

    test('onRadiusChanged should update state with new radius', () {
      filterCubit.onCityChanged(testCity);
      filterCubit.onRadiusChanged(10);

      expect(filterCubit.state?.city, testCity);
      expect(filterCubit.state?.locationRadius, 10);
    });

    test('onSearchWithoutLimitChanged should set radius to null when checked is true', () {
      filterCubit.onCityChanged(testCity);
      filterCubit.onRadiusChanged(10);
      filterCubit.onSearchWithoutLimitChanged(true);

      expect(filterCubit.state?.city, testCity);
      expect(filterCubit.state?.locationRadius, null);
    });

    test('onSearchWithoutLimitChanged should set default radius when checked is false', () {
      filterCubit.onCityChanged(testCity);
      filterCubit.onSearchWithoutLimitChanged(true);
      filterCubit.onSearchWithoutLimitChanged(false);

      expect(filterCubit.state?.city, testCity);
      expect(filterCubit.state?.locationRadius, FilterEntity.defaultFilter.locationRadius);
    });

    test('onFilterConfirmed should save filters to repository', () async {
      const filter = FilterEntity(city: testCity, locationRadius: 10);
      when(mockFilterRepository.saveFilters(filter))
          .thenAnswer((_) async => {});

      await filterCubit.onFilterConfirmed(filter);

      verify(mockFilterRepository.saveFilters(filter)).called(1);
    });

    test('onClearFilterClicked should clear location filters in repository', () async {
      when(mockFilterRepository.clearLocationFilters())
          .thenAnswer((_) async => {});

      await filterCubit.onClearFilterClicked();

      verify(mockFilterRepository.clearLocationFilters()).called(1);
    });
  });
}
