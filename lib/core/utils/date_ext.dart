import 'package:easy_localization/easy_localization.dart';

extension DateExt on DateTime {
  String format(String pattern) => DateFormat(pattern, Intl.getCurrentLocale()).format(this);
}

///////////////////////////////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////////////////////////////

const String yMMMMd = "yMMMMd";
const String eEEEdMMMMHHmm = "EEEE d MMMM HH:mm";
