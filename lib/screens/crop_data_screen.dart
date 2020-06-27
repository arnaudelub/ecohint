import 'package:ecohint/misc/kConstant.dart';
import 'package:ecohint/widgets/crop_data.dart';
import 'package:flutter/material.dart';

class CropDataScreen extends StatefulWidget {
  static const routeName = "/cropdatascreen";

  @override
  _CropDataScreenState createState() => _CropDataScreenState();
}

class _CropDataScreenState extends State<CropDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: kGreenAlgua,
      body: CropData(),
    );
  }
}
