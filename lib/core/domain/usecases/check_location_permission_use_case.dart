import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class CheckLocationPermissionUseCase{
  Future<bool> execute() async{
    const permission = Permission.location;
    return await permission.status.isGranted;
  }
}