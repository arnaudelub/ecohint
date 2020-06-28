import 'package:auto_route/auto_route.dart';
import 'package:ecohint/core/crop_timer_service.dart';
import 'package:ecohint/core/observables.dart';
import 'package:ecohint/core/storage.dart';
import 'package:ecohint/injections.dart';
import 'package:ecohint/routes/router.gr.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ecohint/core/string_extensions.dart';
import 'package:rxdart/rxdart.dart';

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
  int timerCounter;
  int cropIndex;
  Crop crop;
  ValueStream<Map<String, dynamic>> timerStoper = timerSubject.stream;

  @override
  void initState() {
    super.initState();
    print("INIT!!!!!!!!!!");
    timerService = getIt<CropTimerService>();

    timerService.removeListener(_onTick);
    timerService.addListener(_onTick);

    timerStoper.listen(_onSignalReceived);
    cropIndex = widget.cropIndex;
    crop = widget.crop;
    timerCounter = 0;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  void _onTick() {
    timerCounter += 1;
    final timerDif = crop.timer - timerCounter;
    if (timerDif >= 0) {
      print("storing timer at $cropIndex");
      getIt<IStorage>().storeTimer(crop, timerDif);
      timerSubject.add({
        'timer': timerDif,
        'index': cropIndex,
        'stop': false,
      });
    } else {
      timerService.removeListener(_onTick);
    }
  }

  void _onSignalReceived(Map<String, dynamic> data) {
    if (data['stop']) {
      print("stop received");
      timerService.removeListener(_onTick);
    }
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          _controller.forward().whenComplete(() {
            _controller.reverse();
            if (!kIsWeb) {
              ExtendedNavigator.of(context).pushNamed(Routes.cropDataScreen,
                  arguments: CropDataScreenArguments(crop: crop));
            } else if (kIsWeb) {
              //TODO: afficher les infos
              //Navigator.of(context).pushNamed(CropDataScreen.routeName);
            }
          });
        },
        onLongPress: _showConfirmationDialog,
        child: Transform.scale(
          scale: _scale,
          child: LayoutBuilder(builder: (context, constraints) {
            return Stack(children: [
              Container(
                width: constraints.maxWidth,
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
                      crop.picture.split("_")[0],
                      style: const TextStyle(fontSize: 40.0),
                    ),
                    FittedBox(
                        child: Text(
                      crop.name.toUCFirst(),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                    CropTimer(crop: crop)
                  ],
                ),
              ),
              !kIsWeb
                  ? Container()
                  : Positioned(
                      left: constraints.maxHeight * .75,
                      child: InkWell(
                        onTap: _showConfirmationDialog,
                        child: FittedBox(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: kCreme,
                                border: Border.all(
                                  color: kGreenAlgua,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Icon(
                              Icons.clear,
                              color: kGreenAlgua,
                            ),
                          ),
                        ),
                      ))
            ]);
          }),
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
                "Are you sure you want to remove this crop: ${crop.name} ${crop.picture.split('_')[0]}?",
                textAlign: TextAlign.center,
              ),
              actions: [
                FlatButton(
                  onPressed: () {
                    context
                        .bloc<CropsBloc>()
                        .add(CropsEvent.deleteCrop(cropIndex));
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
