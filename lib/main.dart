import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'app.dart';
import 'app/theme.dart';
import 'app_config.dart';
import 'core/di/injection.dart';
import 'core/presentation/blocs/app_bloc_observer.dart';

Future<void> runMainApp(FirebaseOptions firebaseOptions) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  // Init easy localization for translation.
  await EasyLocalization.ensureInitialized();

  // Init firebase.
  await Firebase.initializeApp(options: firebaseOptions);

  // Report crash with crashlytics.
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
    appName: "Dev Flavor Example",
    baseUrl: "https://dwirandyh.com",
    primaryColor: Colors.yellow,
    flavor: Flavor.dev,
  );
  Bloc.observer = AppBlocObserver();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('fr')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const App()));
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
