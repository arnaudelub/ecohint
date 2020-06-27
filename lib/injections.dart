import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ecohint/injections.iconfig.dart';

final GetIt getIt = GetIt.instance;
String environment;

@injectableInit
Future<void> configureInjection(String env) async {
  environment = env;
  await $initGetIt(getIt, environment: env);
}
