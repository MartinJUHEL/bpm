import 'dart:ui';

import 'package:bpm/app.dart';
import 'package:bpm/app/theme.dart';
import 'package:bpm/core/di/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await EasyLocalization.ensureInitialized();
  if (kReleaseMode) {
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  _configLoading();
  AppConfig.create(
    appName: "Prod Flavor Example",
    baseUrl: "https://dwirandyh.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.prod,
  );

  runApp(const App());
}

_configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom //This was missing in earlier code
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..maskColor = Colors.black
    ..maskType = EasyLoadingMaskType.black
    ..boxShadow = <BoxShadow>[]
    ..progressColor = AppTheme.lightTheme.colorScheme.primary
    ..backgroundColor = Colors.transparent
    ..textColor = Colors.white
    ..indicatorColor = Colors.transparent
    ..userInteractions = false
    ..dismissOnTap = false;
}
