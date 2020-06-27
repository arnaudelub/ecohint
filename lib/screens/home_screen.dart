import 'package:ecohint/misc/kConstant.dart';
import 'package:ecohint/widgets/crop_card.dart';
import 'package:ecohint/widgets/crop_data.dart';
import 'dart:async';
import 'package:ecohint/injections.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/crop_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BuildContext blocContext;
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: kCreme,
              appBar: AppBar(
                title: Container(
                  width: 100,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logoSmall.png",
                        height: 40,
                      ),
                      Positioned(
                        top: 15,
                        child: FittedBox(
                          child: Text(
                            "EcoHint",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              body: MultiBlocProvider(
                providers: [
                  BlocProvider(
                      create: (context) =>
                          getIt<CropsBloc>()..add(const CropsEvent.getCrops()))
                ],
                child: BlocBuilder<CropsBloc, CropsState>(
                    builder: (newContext, state) {
                  blocContext = newContext;
                  return CropListener();
                }),
              ),
              floatingActionButton: FloatingActionButton(
                clipBehavior: Clip.hardEdge,
                onPressed: () => _showAddCropDialog(blocContext),
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
                        onChanged: (value) => context
                            .bloc<CropsBloc>()
                            .add(CropsEvent.nameChanged(value))),
                    const SizedBox(height: 8),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.description),
                          labelText: 'Emoji',
                        ),
                        onChanged: (value) => context
                            .bloc<CropsBloc>()
                            .add(CropsEvent.pictureChanged(value))),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    context.bloc<CropsBloc>().add(CropsEvent.createCrop());
                    Navigator.of(context).pop();
                  },
                  child: const Text('Save me!'),
                )
              ],
            ));
  }
}
