import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class RequestLocationPermissionUseCase {
  Future<bool> execute() async {
    final permission = Permission.location;

    if (await permission.isDenied) {
      final result = await permission.request();

      if (result.isGranted) {
        return true;
      } else {
        return false;
      }
    } else if (await permission.isGranted) {
      return true;
    } else if (await permission.isPermanentlyDenied) {
      return openAppSettings();
    } else {
      return false;
    }
  }
}
