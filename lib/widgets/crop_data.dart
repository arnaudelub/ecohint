import 'package:ecohint/models/crop.dart';
import 'package:flutter/material.dart';
import 'package:web_browser/web_browser.dart';

class CropData extends StatelessWidget {
  final Crop crop;

  const CropData({Key key, this.crop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String picture = crop.picture ?? '';
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: FittedBox(
              child: Text("Crop informations:",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 34)),
            ),
          ),
          crop.picture != ''
              ? Flexible(
                  child: WebBrowser(
                    initialUrl:
                        "http://www.gardenology.org/wiki/${picture.split('_')[1]}",
                    javascriptEnabled: true,
                  ),
                )
              : Flexible(
                  child: WebBrowser(
                    initialUrl: "http://www.gardenology.org/wiki",
                    javascriptEnabled: true,
                  ),
                ),
        ],
      ),
    );
  }
}
