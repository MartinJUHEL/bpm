import 'dart:async';

import 'package:assoshare/core/network/GenericErrorTrigger.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GenericErrorTrigger)
class GenericErrorTriggerImpl implements GenericErrorTrigger {
  final StreamController<ErrorType> _genericErrorController = StreamController<ErrorType>();

  @override
  Stream<ErrorType> watchGenericError() {
    return _genericErrorController.stream;
  }

  @override
  void trigger(ErrorType errorType) {
    _genericErrorController.add(errorType);
  }
}
