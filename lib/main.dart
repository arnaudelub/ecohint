import 'package:ecohint/core/crop_timer_provider.dart';
import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:ecohint/screens/loader.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'injections.dart';
import 'screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);
  final cropTimerService = getIt<CropTimerService>();
  runApp(CropTimerProvider(service: cropTimerService, child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;

  void doneLoading(int loadTime) {
    Future.delayed(Duration(milliseconds: loadTime), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const double loadTime = 2;
    doneLoading(loadTime.toInt() * 1000);
    return MaterialApp(
      title: 'EcoHint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kGreenAlgua,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        accentColor: Colors.green,
        colorScheme: ColorScheme.light(
          //-> FloatingActionButton and FlatButton theme
          primary: kGreenAlgua,
          secondary: kGreenBush,
          onSecondary: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.green, selectedItemColor: Colors.white),
      ),
      home: _isLoading
          ? const Loader(loadTime: Duration(milliseconds: 2000))
          : HomeScreen(),
      routes: {
        CropDataScreen.routeName: (BuildContext ctx) => CropDataScreen(),
      },
    );
  }
}
