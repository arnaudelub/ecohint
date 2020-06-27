import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'injections.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoHint',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kGreenAlgua,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
        accentColor: Colors.green,
      ),
      home: HomeScreen(),
      routes: {
        CropDataScreen.routeName: (BuildContext ctx) => CropDataScreen(),
      },
    );
  }
}
