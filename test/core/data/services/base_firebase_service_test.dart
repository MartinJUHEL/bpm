import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:assoshare/core/data/services/base_firebase_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../shared_mocks.mocks.dart';

void main() {
  late MockLogger mockLogger;
  late BaseFirebaseService service;

  setUp(() {
    mockLogger = MockLogger();
    service = BaseFirebaseService(mockLogger);
  });

  group('executeWithErrorHandling', () {
    test('should return the result of the operation when successful', () async {
      final result = await service.executeWithErrorHandling<int>(() async => 123, 'test action');
      expect(result, equals(123));
    });

    test('should throw ServerException when FirebaseException is caught', () async {
      expect(
        () async => await service.executeWithErrorHandling<int>(
          () async => throw FirebaseException(plugin: 'test plugin'),
          'test action',
        ),
        throwsA(isA<ServerException>()),
      );
    });

    test('should throw ServerException when an unexpected exception is caught', () async {
      expect(
        () async => await service.executeWithErrorHandling<int>(
          () async => throw Exception('Unexpected error'),
          'test action',
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });
}
