import 'package:flutter/material.dart';

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
          child: Text(
        "192h 50m 09s",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      )),
    );
  }
}
