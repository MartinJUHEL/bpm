/// A class to be notified when a generic error is triggered, allowing a client observing the [onGenericError]
/// to be aware of it.
abstract class GenericErrorTrigger {
  Stream<ErrorType> watchGenericError();

  void trigger(ErrorType errorType);
}

enum ErrorType { serverError, noConnectivity }
