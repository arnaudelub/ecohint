import 'package:flutter/material.dart';

class CropData extends StatefulWidget {
  static const routeName = "/cropdata";

  @override
  _CropDataState createState() => _CropDataState();
}

class _CropDataState extends State<CropData> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: FittedBox(
              child: Text("Crop informations:",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontFamily: "Poppins",
                      fontSize: 34)),
            ),
          ),
        ],
      ),
    );
  }
}
