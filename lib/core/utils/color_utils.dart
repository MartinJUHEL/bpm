import 'dart:math' as math;

import 'package:flutter/material.dart';

class ColorUtils {
  Color getRandomColor() => Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}
