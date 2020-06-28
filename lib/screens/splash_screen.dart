import 'package:auto_route/auto_route.dart';
import 'package:ecohint/routes/router.gr.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:ecohint/screens/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CropsBloc, CropsState>(
        listener: (context, state) {
          if (!state.isLoading) {
            ExtendedNavigator.of(context).pushReplacementNamed(
                Routes.homeScreen,
                arguments: HomeScreenArguments(crops: state.crops));
          }
        },
        child: Scaffold(body: Container()));
  }
}
