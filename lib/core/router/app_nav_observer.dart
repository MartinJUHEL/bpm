import 'dart:developer';

import 'package:flutter/material.dart';

class AppNavObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('did push route : ${route.settings.name}}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('did push route : ${route.settings.name}');
  }
}
