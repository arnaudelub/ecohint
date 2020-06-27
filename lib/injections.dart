import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ecohint/injections.iconfig.dart';

final GetIt getIt = GetIt.instance;
String environment;

@injectableInit
void configureInjection(String env) {
  environment = env;
  $initGetIt(getIt, environment: env);
}
