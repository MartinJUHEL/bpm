import 'dart:ui';

import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle appBarTitleStyle(BuildContext context) => TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 18,
      fontWeight: FontWeight.bold);
}
