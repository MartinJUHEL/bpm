import 'dart:io';

import 'package:injectable/injectable.dart';

@injectable
class GetApiKeyUseCase {
  String execute() {
    return Platform.isAndroid ? _androidKey : _iosKey;
  }

  ///////////////////////////////////////////////////////////////
  //CONSTANTS
  ///////////////////////////////////////////////////////////////

  static const String _androidKey = 'AIzaSyBBbd_IQn6kTonAe5b-TPz9Gvln7RWsNq0';

  //todo
  static const String _iosKey = 'YOUR_API_KEY_HERE';
}
