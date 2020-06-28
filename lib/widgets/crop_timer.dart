import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class CropTimer extends StatefulWidget {
  @override
  _CropTimerState createState() => _CropTimerState();
}

class _CropTimerState extends State<CropTimer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: FittedBox(
          child: SlideCountdownClock(
            textStyle: const TextStyle(color: Colors.white, fontSize: 24.0),
            duration: const Duration(days: 2),
            separator: ':',
            shouldShowDays: true,
          )),
    );
  }
}
