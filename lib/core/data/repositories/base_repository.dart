import 'package:assoshare/core/data/error/exceptions.dart';
import 'package:assoshare/core/data/error/failures.dart';
import 'package:assoshare/core/domain/entities/result.dart';
import 'package:assoshare/core/network/GenericErrorTrigger.dart';
import 'package:assoshare/core/network/app_connectivity_info.dart';
import 'package:logger/logger.dart';

base class BaseRepository {
  BaseRepository(this._genericErrorTrigger, this._connectivityInfo, this._logger);

  final GenericErrorTrigger _genericErrorTrigger;
  final AppConnectivityInfo _connectivityInfo;
  final Logger _logger;

  /// Performs an action (such as an HTTP call), but returns the result in a wrapped object
  /// If there is no _connectivity or a server error occurred, the [GenericErrorTrigger] class is triggered so that a generic message can be shown
  /// [JSON] the object to be read object from HTTP (json).
  /// [OUTPUT] the object to return (typically, a model).
  /// [action] the action to perform to get a DTO (a HTTP call, for example).
  /// [transform] transform the action to perform to convert the DTO to OUTPUT
  /// Return the [OUTPUT] object wrapped inside a response object, which may be an error object.
  Future<Result<OUTPUT>> safeCall<JSON, OUTPUT>(
      {required Future<JSON> Function() action, required OUTPUT Function(JSON) transform}) async {
    if (!(await _connectivityInfo.isConnected)) {
      _triggerNoConnectivity();
      return const Result.failure(Failure.offline());
    }
    try {
      final JSON result = await action();
      return Result.success(transform(result));
    } on ServerException {
      _triggerServerError();
      _logger.e('Server Exception in safeCall');
      return const Result.failure(Failure.server());
    } catch (e) {
      _logger.e('Unexpected error in safeCall: $e');
      return const Result.failure(Failure.server());
    }
  }

  ///////////////////////////////////////////////////////////////////////////
  // PRIVATE METHODS
  ///////////////////////////////////////////////////////////////////////////

  void _triggerServerError() {
    _genericErrorTrigger.trigger(ErrorType.serverError);
  }

  void _triggerNoConnectivity() {
    _genericErrorTrigger.trigger(ErrorType.noConnectivity);
  }
}
