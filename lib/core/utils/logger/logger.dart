import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 5,
    errorMethodCount: 3,
    lineLength: 100,
    colors: true,
    printEmojis: true,
    printTime: true
  )
);
