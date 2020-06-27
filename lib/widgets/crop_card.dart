import 'dart:io';
import 'package:ecohint/misc/kConstant.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CropCard extends StatelessWidget {
  final Crop crop;

  const CropCard(this.crop);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          if (Platform.isIOS || Platform.isAndroid) {
            Navigator.of(context).pushNamed(CropDataScreen.routeName);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 5), blurRadius: 5, color: Colors.black),
            ],
            borderRadius: BorderRadius.all(Radius.circular(35)),
            color: kGreenBush,
            border: Border.all(
                color: kGreenAlgua, width: 2, style: BorderStyle.solid),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                crop.picture,
                style: TextStyle(fontSize: 70.0),
              ),
              FittedBox(
                  child: Text(
                crop.name,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              )),
              CropTimer()
            ],
          ),
        ),
      ),
    );
  }
}
