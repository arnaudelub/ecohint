import 'package:auto_route/auto_route_annotations.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:ecohint/screens/loader.dart';
import 'package:ecohint/screens/splash_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  Loader loader;
  SplashScreen splashScreen;
  HomeScreen homeScreen;
  CropDataScreen cropDataScreen;
}
