import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@Freezed(when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
sealed class Failure with _$Failure {
  const factory Failure.server() = ServerFailure;

  const factory Failure.cache() = CacheFailure;

  const factory Failure.notFound() = NotFoundFailure;

  const factory Failure.offline() = OfflineFailure;

  const factory Failure.timeout() = TimeoutFailure;

  const factory Failure.unauthorized() = UnauthorizedFailure;

  const factory Failure.badRequest() = BadRequestFailure;
}
