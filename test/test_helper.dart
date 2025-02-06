import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mock_asset_loader.dart';

Future<void> setupSharedPreferences() async {
  SharedPreferences.setMockInitialValues({}); // Initialise un mock vide
  await SharedPreferences.getInstance();
}

EasyLocalization setupLocalizeWidget() {
  return EasyLocalization(
    supportedLocales: const [Locale('fr')],
    path: 'assets/translations',
    assetLoader: MockAssetLoader(),
    fallbackLocale: const Locale('fr'),
    child: Builder(
      builder: (context) {
        return MaterialApp(
          locale: EasyLocalization.of(context)?.locale,
          supportedLocales: EasyLocalization.of(context)!.supportedLocales,
          localizationsDelegates: EasyLocalization.of(context)?.delegates,
          home: Builder(
            builder: (context) {
              return const SizedBox.shrink();
            },
          ),
        );
      },
    ),
  );
}
