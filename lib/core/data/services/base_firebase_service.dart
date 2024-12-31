import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logger/logger.dart';

class BaseFirebaseService {
  final Logger logger;

  BaseFirebaseService(this.logger);

  Future<T> executeWithErrorHandling<T>(
    Future<T> Function() operation,
    String actionDescription,
  ) async {
    try {
      return await operation();
    } on FirebaseException catch (e) {
      logger.e('Firebase error during $actionDescription: $e');
      throw ServerException();
    } catch (e) {
      logger.e('Unexpected error during $actionDescription: $e');
      throw ServerException();
    }
  }

  Stream<T> handleStreamWithErrorHandling<T>(
    Stream<T> Function() streamProvider,
    String actionDescription,
  ) {
    try {
      return streamProvider().handleError((error, stackTrace) {
        if (error is FirebaseException) {
          logger.e('Firebase error during $actionDescription: $error');
          throw ServerException();
        } else {
          logger.e('Unexpected error during $actionDescription: $error');
          throw ServerException();
        }
      });
    } catch (e) {
      logger.e('Error creating stream for $actionDescription: $e');
      rethrow;
    }
  }
}
