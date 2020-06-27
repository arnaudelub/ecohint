import 'dart:io';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../screens/crop_data_screen.dart';

class CropCard extends StatefulWidget {
  final Crop crop;

  const CropCard(this.crop);

  @override
  _CropCardState createState() => _CropCardState();
}

class _CropCardState extends State<CropCard> with TickerProviderStateMixin {
  //Animation
  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    void _onTapDown(TapDownDetails details) {
      _controller.forward();
    }

    void _onTapUp(TapUpDetails details) {
      _controller.reverse();
    }

    _scale = 1 - _controller.value;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        /*onTap: () {
          /*if (Platform.isIOS || Platform.isAndroid) {
            Navigator.of(context).pushNamed(CropDataScreen.routeName);
          } else if (kIsWeb) {
            //TODO: afficher les infos
          }*/
        },*/
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
                  style: const TextStyle(fontSize: 70.0),
                ),
                FittedBox(
                    child: Text(
                  widget.crop.name,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                )),
                CropTimer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
