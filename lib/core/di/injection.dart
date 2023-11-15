import 'package:bpm/core/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  // the default method name that will be generated
  preferRelativeImports: true,
  // default
  asExtension: false, // default
)
Future<void> configureDependencies() async => await $initGetIt(locator);
