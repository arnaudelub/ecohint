// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ecohint/screens/loader.dart';
import 'package:ecohint/screens/splash_screen.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/screens/crop_data_screen.dart';

abstract class Routes {
  static const loader = '/';
  static const splashScreen = '/splash-screen';
  static const homeScreen = '/home-screen';
  static const cropDataScreen = '/crop-data-screen';
  static const all = {
    loader,
    splashScreen,
    homeScreen,
    cropDataScreen,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.loader:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Loader(),
          settings: settings,
        );
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.homeScreen:
        if (hasInvalidArgs<HomeScreenArguments>(args)) {
          return misTypedArgsRoute<HomeScreenArguments>(args);
        }
        final typedArgs = args as HomeScreenArguments ?? HomeScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              HomeScreen(key: typedArgs.key, crops: typedArgs.crops),
          settings: settings,
        );
      case Routes.cropDataScreen:
        if (hasInvalidArgs<CropDataScreenArguments>(args)) {
          return misTypedArgsRoute<CropDataScreenArguments>(args);
        }
        final typedArgs =
            args as CropDataScreenArguments ?? CropDataScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              CropDataScreen(key: typedArgs.key, crop: typedArgs.crop),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HomeScreen arguments holder class
class HomeScreenArguments {
  final Key key;
  final List<Crop> crops;
  HomeScreenArguments({this.key, this.crops});
}

//CropDataScreen arguments holder class
class CropDataScreenArguments {
  final Key key;
  final Crop crop;
  CropDataScreenArguments({this.key, this.crop});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushLoader() => pushNamed(Routes.loader);

  Future pushSplashScreen() => pushNamed(Routes.splashScreen);

  Future pushHomeScreen({
    Key key,
    List<Crop> crops,
  }) =>
      pushNamed(
        Routes.homeScreen,
        arguments: HomeScreenArguments(key: key, crops: crops),
      );

  Future pushCropDataScreen({
    Key key,
    Crop crop,
  }) =>
      pushNamed(
        Routes.cropDataScreen,
        arguments: CropDataScreenArguments(key: key, crop: crop),
      );
}
