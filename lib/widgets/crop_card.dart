import 'dart:io';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/screens/crop_data_screen.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';

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
                crop.picture,
                style: const TextStyle(fontSize: 70.0),
              ),
              FittedBox(
                  child: Text(
                crop.name,
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
    );
  }
}
