import 'package:flutter/foundation.dart';

import '../entities/result.dart';

@immutable
abstract interface class BaseUseCase<Type, Params> {
  Future<Result<Type>> call(Params params);
}

@immutable
abstract interface class BaseUseCaseWithoutParams<Type> {
  Future<Result<Type>> call();
}
