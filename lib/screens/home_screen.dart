import 'dart:async';
import 'package:ecohint/injections.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/crop_card.dart';
import 'package:ecohint/widgets/crop_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                title: const Center(child: Text("EcoHint")),
              ),
              body: MultiBlocProvider(
                providers: [
                  BlocProvider(
                      create: (contexT) =>
                          getIt<CropsBloc>()..add(const CropsEvent.getCrops()))
                ],
                child: CropListener(),
              ),
              floatingActionButton: FloatingActionButton(
                clipBehavior: Clip.hardEdge,
                onPressed: () => _showAddCropDialog(context),
                child: const Icon(Icons.add),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_florist), title: Text("Crops")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_alarms), title: Text("Timers")),
                ],
              ),
            );
          } else {
            return const Scaffold(
                body: Center(child: CircularProgressIndicator()));
          }
        });
  }

  void _showAddCropDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text("Add a new Crop"),
              content: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.title),
                        labelText: 'name',
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.description),
                        labelText: 'Description',
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close me!'),
                )
              ],
            ));
  }
}
