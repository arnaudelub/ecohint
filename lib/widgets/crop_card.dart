import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';

class CropCard extends StatelessWidget {
  final Crop crop;

  const CropCard(this.crop);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[100],
          border: Border.all(
              color: Colors.amber, width: 2, style: BorderStyle.solid),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              crop.picture,
              style: const TextStyle(fontSize: 32.0),
            ),
            Text(crop.name),
            CropTimer()
          ],
        ),
      ),
    );
  }
}
