import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class UserLocalService {
  final SharedPreferences _preferences;

  UserLocalService(this._preferences);

  Future<bool> saveUserName(String name) {
    return _preferences.setString(_userNameKey, name);
  }

  String? getUserName() {
    return _preferences.getString(_userNameKey);
  }

  Future<bool> saveUid(String uid) {
    return _preferences.setString(_uidKey, uid);
  }

  String? getUid() {
    return _preferences.getString(_uidKey);
  }

  Future<void> removeUser() async {
    await _preferences.remove('userName');
    await _preferences.remove('uid');
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const _userNameKey = 'userName';
  static const _uidKey = 'uid';
}
