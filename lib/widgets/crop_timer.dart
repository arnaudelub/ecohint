import 'package:ecohint/models/crop.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class CropTimer extends StatelessWidget {
  final Crop crop;

  const CropTimer({Key key, this.crop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: FittedBox(
          child: SlideCountdownClock(
        textStyle: const TextStyle(color: Colors.white, fontSize: 24.0),
        duration: Duration(milliseconds: crop.timer),
        separator: ':',
        shouldShowDays: true,
      )),
    );
  }
}
