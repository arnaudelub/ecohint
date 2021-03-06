import 'package:auto_route/auto_route.dart';
import 'package:ecohint/core/crop_timer_provider.dart';
import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/routes/router.gr.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:ecohint/screens/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<CropsBloc>()..add(const CropsEvent.getCrops())),
      ],
      child: MaterialApp(
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
        builder: ExtendedNavigator(router: Router()),
      ),
    );
  }
}
