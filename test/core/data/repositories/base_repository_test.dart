import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/data/repositories/base_repository.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/core/network/GenericErrorTrigger.dart';
import 'package:assoshare/core/network/app_connectivity_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../shared_mocks.mocks.dart';
import 'base_repository_test.mocks.dart';

@GenerateMocks([GenericErrorTrigger, AppConnectivityInfo])
void main() {
  late MockGenericErrorTrigger mockGenericErrorTrigger;
  late MockAppConnectivityInfo mockConnectivityInfo;
  late MockLogger mockLogger;
  late ConcreteRepository repository;

  setUp(() {
    mockGenericErrorTrigger = MockGenericErrorTrigger();
    mockConnectivityInfo = MockAppConnectivityInfo();
    mockLogger = MockLogger();
    repository = ConcreteRepository(mockGenericErrorTrigger, mockConnectivityInfo, mockLogger);
  });

  group('safeCall', () {
    test('should return Result.success when action is successful', () async {
      when(mockConnectivityInfo.isConnected).thenAnswer((_) async => true);
      when(mockLogger.e(any)).thenReturn(null); // Mock logger.e to avoid printing errors
      final result = await repository.safeCall<int, String>(
        action: () async => 123,
        transform: (value) => value.toString(),
      );
      expect(result, equals(const Result.success('123')));
    });

    test('should return Result.failure(Failure.offline()) when device is offline', () async {
      when(mockConnectivityInfo.isConnected).thenAnswer((_) async => false);
      when(mockLogger.e(any)).thenReturn(null); // Mock logger.e to avoid printing errors
      final Result<String> result = await repository.safeCall<int, String>(
        action: () async => 123, // Dummy action
        transform: (value) => value.toString(),
      );
      // Ensure explicit types in Result.failure
      expect(result, equals(const Result<String>.failure(Failure.offline())));

      verify(mockGenericErrorTrigger.trigger(ErrorType.noConnectivity)).called(1);
    });

    test('should return Result.failure(Failure.server()) when ServerException is thrown', () async {
      when(mockConnectivityInfo.isConnected).thenAnswer((_) async => true);
      when(mockLogger.e(any)).thenReturn(null); // Mock logger.e to avoid printing errors
      final result = await repository.safeCall<dynamic, dynamic>(
        action: () async => throw ServerException(),
        transform: (value) => value.toString(),
      );
      expect(result, equals(const Result.failure(Failure.server())));
      verify(mockGenericErrorTrigger.trigger(ErrorType.serverError)).called(1);
    });

    test('should return Result.failure(Failure.server()) when an unexpected exception is thrown', () async {
      when(mockConnectivityInfo.isConnected).thenAnswer((_) async => true);
      when(mockLogger.e(any)).thenReturn(null); // Mock logger.e to avoid printing errors
      final Result<String> result = await repository.safeCall<int, String>(
        action: () async => throw Exception('Unexpected error'),
        transform: (value) => value.toString(),
      );
      expect(result, equals(const Result<String>.failure(Failure.server())));
    });
  });
}

final class ConcreteRepository extends BaseRepository {
  ConcreteRepository(super.genericErrorTrigger, super.connectivityInfo, super.logger);
}
