import 'dart:io';
import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/injections.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/bloc/crops_timer/crops_timer_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../screens/crop_data_screen.dart';

class CropCard extends StatefulWidget {
  final Crop crop;
  final int cropIndex;
  const CropCard(this.crop, this.cropIndex);

  @override
  _CropCardState createState() => _CropCardState();
}

class _CropCardState extends State<CropCard> with TickerProviderStateMixin {
  //Animation
  double _scale;
  AnimationController _controller;
  CropTimerService timerService;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    this.dispose;
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    final timerServce = CropTimerService.of(context);
    timerServce.setIndex(widget.cropIndex);
    timerServce.start();
    return BlocProvider(
      create: (context) => getIt<CropsTimerBloc>(),
      child: BlocListener<CropsTimerBloc, CropsTimerState>(
        listener: (context, state) {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              _controller.forward().whenComplete(() {
                _controller.reverse();
                if (!kIsWeb) {
                  Navigator.of(context).pushNamed(CropDataScreen.routeName);
                } else if (kIsWeb) {
                  //TODO: afficher les infos
                  //Navigator.of(context).pushNamed(CropDataScreen.routeName);
                }
              });
            },
            onLongPress: _showConfirmationDialog,
            child: Transform.scale(
              scale: _scale,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                  color: kGreenBush,
                  border: Border.all(
                    color: kGreenAlgua,
                    width: 2,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.crop.picture,
                      style: const TextStyle(fontSize: 40.0),
                    ),
                    FittedBox(
                        child: Text(
                      widget.crop.name,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                    CropTimer(crop: widget.crop)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text(
                "Removing crop",
                textAlign: TextAlign.center,
              ),
              content: Text(
                "Are you sure you want to remove this crop: ${widget.crop.name} ${widget.crop.picture}?",
                textAlign: TextAlign.center,
              ),
              actions: [
                FlatButton(
                  onPressed: () {
                    context
                        .bloc<CropsBloc>()
                        .add(CropsEvent.deleteCrop(widget.crop));
                    Navigator.of(context).pop();
                  },
                  child: const Text("Yes"),
                ),
                FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("No"),
                ),
              ],
            ));
  }
}
