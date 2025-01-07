import 'dart:ui';

import 'package:assoshare/core/data/services/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<FirebaseService> get fireService => FirebaseService.init();

  @singleton
  FirebaseFirestore get store => FirebaseFirestore.instance;

  @singleton
  FirebaseCrashlytics get crashlytics => FirebaseCrashlytics.instance;

  @singleton
  FirebaseAuth get auth => FirebaseAuth.instance;

  @singleton
  FirebaseStorage get storage => FirebaseStorage.instance;

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  Dio get dio => Dio();

  @singleton
  Logger get logger => Logger();

  @singleton
  Locale get currentLocale => PlatformDispatcher.instance.locale;
}
