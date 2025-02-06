import 'dart:convert';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';

class MockAssetLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    String jsonString =
    await rootBundle.loadString('assets/translations/en.json');
    return jsonDecode(jsonString);
  }
}
