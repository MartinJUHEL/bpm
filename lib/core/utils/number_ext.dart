import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

extension DoubleExt on double {
  String displayPrice({Locale? locale}) {
    var formatter =
        NumberFormat.simpleCurrency(locale: locale?.toString() ?? Intl.getCurrentLocale(), decimalDigits: 2);
    return formatter.format(this);
  }
}
