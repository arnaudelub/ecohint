import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/widgets/crop_data.dart';
import 'package:flutter/material.dart';

class CropDataScreen extends StatelessWidget {
  final Crop crop;

  const CropDataScreen({Key key, this.crop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: kGreenAlgua,
      body: CropData(crop: crop),
    );
  }
}
