import 'package:ecohint/widgets/crop_timer.dart';
import 'package:flutter/material.dart';

class CropCard extends StatefulWidget {
  int index;

  CropCard(this.index);

  @override
  _CropCardState createState() => _CropCardState();
}

class _CropCardState extends State<CropCard> {
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
            Text("🌷", style: TextStyle(fontSize: 32.0),),
            Text("Lilies"),
            CropTimer()
          ],
        ),
      ),
    );
  }
}
