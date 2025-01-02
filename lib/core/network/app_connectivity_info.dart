import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract interface class AppConnectivityInfo {
  Future<bool> get isConnected;
}

@Singleton(as: AppConnectivityInfo)
class AppConnectivityInfoImpl implements AppConnectivityInfo {
  const AppConnectivityInfoImpl();

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.ethernet)) {
      return true;
    }
    return false;
  }
}
